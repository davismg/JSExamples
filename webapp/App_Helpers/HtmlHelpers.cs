using System.Web;
using System.Web.Mvc;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;

namespace WorkforcePlanning.Core.Views.App_Helpers
{
    public static class HtmlHelpers 
    {
        public static IHtmlString YesNoReadonly(this HtmlHelper helper, bool value)
        {
            var color = value ? "colYes" : "colNo";
            var icon = value ? "check" : "times";

            return new HtmlString($"<i class='fa fa-{icon} {color}' ></i>");
        }

        public static IHtmlString YesNo(this HtmlHelper helper, bool value, string name, string label)
        {
            var check = value ? "checked" : string.Empty;

            return new HtmlString($@"
                                <label class='toggle'>
                                    <input type='checkbox' checked='{check}' name='checkbox-toggle' id='{name}'></input>
                                    <i data-swchon-text='Yes' data-swchoff-text='No'></i>{label}
                                </label>
                ");
        }

        public static IHtmlString Label(this HtmlHelper helper, string labelText, int colLength)
        {
            return new HtmlString($"<div class='col-md-{colLength} txtLabel'>{labelText}</div>");
        }

        public static IHtmlString Text(this HtmlHelper helper, string initalValue, string fieldName, int colLength)
        {
            return new HtmlString($@"<div class='col-md-{colLength} txtLabel'>
                                        <input type='text' class='form-control' name='{fieldName}' id='{fieldName}' value='{initalValue}' />
                                     </div>");
        }

        public static IHtmlString TextCurrency(this HtmlHelper helper, string initalValue, string fieldName, int colLength)
        {
            return new HtmlString($@"
                                         <div class='col-md-{colLength} txtLabel'>
                                            <div class='input-group'>
                                                <span class='input-group-addon'>$</span>
                                                <input type='text' class='form-control' name='{fieldName}' id='{fieldName}' value='{initalValue}' />
                                            </div>
                                        </div>
");
        }

        public static IHtmlString AutoComplete(this HtmlHelper helper, string initalValue, string fieldName, int colLength, string controller, string action)
        {
            return new HtmlString($@"
                                     <div class='col-md-{colLength} txtLabel'>
                                        <input type='text' class='form-control select2'  data-provide='typeahead'  name='{fieldName}' id='{fieldName}' value='{initalValue}' data-controller='{controller}' data-action='{action}' />
                                            
                                    </div>
    ");
        }

        public static IHtmlString TextDate(this HtmlHelper helper, string initalValue, string fieldName, int colLength)
        {
            return new HtmlString($@"<div class='col-md-{colLength} txtLabel'>
                                        <div class='input-group'>
                                            <input type='text' class='form-control datepicker' data-dateformat='dd/mm/yy' name='{fieldName}' id='{fieldName}' value='{initalValue}' />
                                              <span class='input-group-addon'><i class='fa fa-calendar'></i></span>
                                        </div>
                                     </div>");
        }

        public static IHtmlString Value(this HtmlHelper helper, string valueText, int colLength)
        {
            return new HtmlString($"<div class='col-md-{colLength}'>{valueText}</div>");
        }

        public static IHtmlString Currency(this HtmlHelper helper, decimal value, int colLength)
        {
            return new HtmlString($@"<div class='col-md-{colLength}'>{value.ToString("C")}</div>");
        }

        public static IHtmlString Upload(this HtmlHelper helper, string id, int colLength)
        {
            return new HtmlString($"<div class='col-md-{colLength}'><input type='file' name='file' id='{id}' /></div>");
        }

        public static IHtmlString Submit(this HtmlHelper helper, string caption, int colLength)
        {
            return new HtmlString($"<div class='col-md-{colLength}'><input class='btn btn-info' type='submit' value='{caption}' /></div>");
        }

        public static IHtmlString Message(this HtmlHelper helper, OperationResult result)
        {
            var level = result.IsSuccess ? "success" : "danger";
            var control = $@"
            <div class='alert alert-{level} alert-dismissible' style='margin-top: 10px; margin-bottom: 10px;' role='alert'>
                 <button type = 'button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                 <strong>{result.Message}
            </div>";

            return new HtmlString(control);
        }
    }
}