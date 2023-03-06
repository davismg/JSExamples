var PositionController = {

    Initialize: function() {
//        $("[id='lblPosition']").on("click", function () {
//            PositionController.PositionDetails_Show($(this).attr("data-id"));
//        });
//        $("[id='lblPositionEdit']").on("click", function () {
//            PositionController.PositionDetails_Edit($(this).attr("data-id"));
//        });
        $("[id='lblHeldBy']").on("click", function () {
             PositionController.HeldByDetails_Show($(this).attr("data-id"));
        });

        $("#btnCancel").on("click", function() {
            PositionController.PositionDetails_CancelEdit();
        });

        $("#btnSave").on("click", function () {
            PositionController.PositionDetails_Save();
        });
    },

    PositionDetails_CancelEdit: function() {
        if(!confirm("Are you sure you want to cancel your changes?")) return;

        History.Back(0);
    },

    PositionDetails_Save: function () {
        var position = ModelBuilder.Position;

        dataSer

        
    },

    PositionDetails_Show: function (positionId) {
        debugger;
        ModalWindowController.ShowDynamic("id-badge", "Position Details", "/Home/Position/" + positionId);
    },

    PositionDetails_Edit: function (positionId) {
        ModalWindowController.ShowDynamic("id-badge", "Edit Position Details", "/Home/Edit/" + positionId);
    },

    HeldByDetails_Show: function (positionId) {
        debugger;
        ModalWindowController.ShowDynamic("user-o", "Postion Held By Details", "/Home/HeldBy?number=" + positionId);
    }
}