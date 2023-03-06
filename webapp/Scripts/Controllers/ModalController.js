var ModalWindowController = {
    Modal: $("#pnlModalWindow"),
    Show: function(icon, title, content, height, width) {
        $("#lblModalTitle", ModalWindowController.Modal).text(title);
        if (icon != "") { $("#imgModalIcon", ModalWindowController.Modal).addClass("fa-" + icon) }

        $(".modal-body", ModalWindowController.Modal).html(content);

        ModalWindowController.Modal.modal();
    },

    ShowDynamic: function (icon, title, contentUrl, height, width) {
        $("#lblModalTitle", ModalWindowController.Modal).text(title);
        if (icon != "") { $("#imgModalIcon", $("#pnlModalWindow")).addClass("fa-" + icon) }
        $(".modal-body", $("#pnlModalWindow")).load(contentUrl);
        $("#pnlModalWindow").modal();
    }
}