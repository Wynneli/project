
(function ($, window, document, undefined)
{
    /*
     构造函数
     **/
    var _easyform = function (ele, opt)
    {
        this.form = ele;

        this.defaults = {
            easytip: true
        };
        this.options = $.extend({}, this.defaults, opt);

        this.result = [];
        this.inputs = [];

        this.counter = 0;   //已经判断成功的input计数
        this.is_submit = true;

        //事件定义
        this.success = null;
        this.error = null;
    };

    //方法
    _easyform.prototype = {

        init: function ()
        {
            var ei = this;
            ei._load();

            //改写 submit 的属性，便于控制
            this.submit_button = this.form.find("input:submit");
            this.submit_button.each(function ()
            {
                var button = $(this);
                button.attr("type", "button");

                //提交前判断
                button.click(function ()
                {
                    ei.submit(true);
                });
            });

            return this;
        },

        _load: function ()
        {
            this.inputs.splice(0, this.inputs.length);
            var ev = this;

            this.form.find("input:visible").each(function (index, input)
            {
                //排除 hidden、button、submit、checkbox、radio、file
                if (input.type != "hidden" && input.type != "button" && input.type != "submit" && input.type != "checkbox" && input.type != "radio" && input.type != "file")
                {
                    var checker = $(input).easyinput({easytip: ev.easytip});

                    checker.error = function (e)
                    {
                        ev.is_submit = false;
                        ev.result.push(e);

                        if (!!ev.error)    //失败事件
                            ev.error(e);
                    };

                    checker.success = function (e)
                    {
                        ev.counter++;
                        if (ev.counter == ev.inputs.length)
                        {
                            ev.counter = 0;

                            if (!!ev.success)    //成功事件
                                ev.success();

                            if (!!ev.is_submit)
                            {
                                ev.form.submit();
                            }
                        }
                    };

                    ev.inputs.push(checker);
                }
            });
        },

        /*
         * 表单提交函数
         * @submit：bool值，用于定义是否真的提交表单
         * */
        submit: function (submit)
        {
            this._load();                                               //重新载入控件
            this.result.splice(0, this.result.length);     //清空前一次的结果

            this.counter = 0;
            this.is_submit = submit;

            var index;
            for (index in this.inputs)
            {
                this.inputs[index].validation();
            }
        }

    };

    //添加到jquery
    $.fn.easyform = function (options)
    {
        var validation = new _easyform(this, options);

        return validation.init();
    };


})(jQuery, window, document);

(function ($, window, document, undefined)
{
    //单个input的检查器构造函数
    var _easyinput = function (input, opt)
    {
        this.input = input;
        this.rules = [];

        this.message = $(input).attr("message");
        this.message = (!!this.message ? this.message : "格式错误!");

        //事件
        this.error = null;
        this.success = null;

        this.defaults = {
            easytip: true   //是否显示easytip
        };
        this.options = $.extend({}, this.defaults, opt);

        this.counter = 0;   //计数器，记录已经有多少个条件成功

        this.is_error = false;
    };

    //单个input的检查器
    _easyinput.prototype = {

        init: function ()
        {
            //初始化easytip
            this._init_easytip();

            //是否实时检查
            var easyinput = this;
            var rule = this.input.attr("easyform");
            if (!!rule && -1 != rule.indexOf("real-time"))
            {
                this.input.blur(function ()
                {
                    easyinput.validation();
                });
            }

            return this;
        },

        //初始化easytip
        _init_easytip: function ()
        {
            if (!!this.options.easytip)
            {
                var tipoptions = $(this.input).attr("easytip");

                tipoptions = (!!tipoptions ? tipoptions.split(";") : undefined);

                if (!!tipoptions)
                {
                    var options = Object();
                    var index;
                    for (index in tipoptions)
                    {
                        var temps = tipoptions[index];
                        var p = temps.indexOf(":");

                        if (-1 == p)continue;

                        var temp = [];
                        temp[0] = temps.substring(0, p);
                        temp[1] = temps.substring(p + 1);

                        options[temp[0]] = temp[1];
                    }
                }

                this.options.easytip = $(this.input).easytip(options);
            }
        },

        /**
         * 规则判断
         * */
        validation: function ()
        {
            this.value = this.input.val();
            this.counter = 0;   //计数器清零
            this.rule = this.input.attr("easyform");

            this.is_error = false;

            this._parse(this.rule);

            this._null(this, this.value, this.rule);

            for (var i = 0; i < this.rules.length; i++)
            {
                //调用条件函数
                if (!!this.judge[this.rules[i].rule])
                    this.judge[this.rules[i].rule](this, this.value, this.rules[i].param);
            }
        },

        //easyform 解析函数
        _parse: function (str)
        {
            this.rules = [];

            var strs = !!str ? str.split(";") : {};

            for (var i = 0; i < strs.length; i++)
            {
                var s = strs[i];
                var rule = s;
                var param = "";

                //有：号
                var p = s.indexOf(":");
                if (-1 != p)
                {
                    rule = s.substr(0, p);
                    param = s.substr(p + 1);
                }

                if (!!this.judge[rule])
                    this.rules.push({rule: rule, param: param});
            }
        },

        _error: function (rule)
        {
            if (!!this.error)
                this.error(this.input, rule);

            if (false == this.is_error)
            {
                var msg = this.input.attr(rule + "-message");

                var msg = !msg ? this.message : msg;

                if (!!this.options.easytip)
                {
                    this.options.easytip.show(msg);
                }

                this.is_error = true;
            }

            return false;
        },

        _success: function ()
        {
            if (!!this.success)
                this.success(this.input);

            return true;
        },

        _success_rule: function (rule)
        {
            this.counter += 1;

            if (this.counter == this.rules.length)
                this._success();

            return true;
        },

        _null: function (ei, v, r)
        {
            if (!v)
            {
                if (!!r && -1 != r.indexOf("null")) //rule不为空并且含有null
                {
                    return ei._success();
                }
                else
                {
                    return ei._error("require");
                }
            }
        },

        /*
         * 按照各种rule进行判断的函数数组
         * 通过对judge添加成员函数，可以扩充规则
         * */
        judge: {
            "char-normal": function (ei, v, p)
            {
                if (false == /^\w+$/.test(v))
                    return ei._error("char-normal");
                else
                    return ei._success_rule("char-normal");
            },

            "char-chinese": function (ei, v, p)
            {
                if (false == /^([\w]|[\u4e00-\u9fa5]|[ 。，、？￥“‘！：【】《》（）——+-])+$/.test(v))
                    return ei._error("char-chinese");
                else
                    return ei._success_rule("char-chinese");
            },

            "char-english": function (ei, v, p)
            {
                if (false == /^([\w]|[ .,?!$'":+-])+$/.test(v))
                    return ei._error("char-english");
                else
                    return ei._success_rule("char-english");
            },

            "email": function (ei, v, p)
            {
                if (false == /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/.test(v))
                    return ei._error("email");
                else
                    return ei._success_rule("email");
            },

            "length": function (ei, v, p)
            {
                var range = p.split("-");

                //如果长度设置为 length:6 这样的格式
                if (range.length == 1) range[1] = range[0];

                if (v.length < range[0] || v.length > range[1])
                    return ei._error("length");
                else
                    return ei._success_rule("length");
            },

            "equal": function (ei, v, p)
            {
                var pair = $(p);
                if (0 == pair.length || pair.val() != v)
                    return ei._error("equal");
                else
                    return ei._success_rule("equal");
            },
})(jQuery, window, document);
