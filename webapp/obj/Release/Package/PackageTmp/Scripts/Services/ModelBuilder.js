var ModelBuilder = {
    Postion: function() {
        var position = new Object();

        position.Title = $("#txtTitle").val();
        postion.Number = $("#txtNumber");
        postion.ManagingPositionNumber = $("#txtManagingPosition");
        postion.EmployeeNumber = $("#txtHeldBy");
        postion.JobId = $("#");
        postion.JobFamilyId = $("#");
        postion.GoaId = $("#");
        postion.CostCentreId = $("#txtCostCentre");
        postion.HomeCostCentreId = $("#txtHomeCostCentre");
        postion.FlowToCostCentreId = $("#txtFlowToCostCentre");
        postion.LocationId = $("#");
        postion.WorkLocationId = $("#");
        postion.SubGroupId = $("#");
        postion.EmploymentTypeId = $("#");
        postion.PersonnelSubAreaId = $("#");
        postion.PayScaleTypeId = $("#");
        postion.WorkScheduleId = $("#");
        postion.Title = $("#");
        postion.PayScaleGroupMin = $("#");
        postion.PayScaleGroupMax = $("#");
        postion.PayScaleLevelMin = $("#");
        postion.PayScaleLevelMax = $("#");
        postion.OvertimeExempt = $("#OvertimeExempt").prop("checked");
        postion.HardToRecruit = $("#HardToRecruit").prop("checked");
        postion.DoesCountAsHeadCount = $("#DoesCountASHeadCount").prop("checked");
        postion.IsCriticalSkill = $("#IsCriticalSkill").prop("checked");
        postion.PlannedStartDate = $("#PlannedStartDate").val();
        postion.PlannedEndDate = $("#PlannedEndDate").val();
        postion.PlanningSalary = $("#PlanningSalary").val();
        postion.EmploymentPercentage = $("#");
        postion.FullTimeEquivalencyPercentage = $("#");
        postion.PlanningSalaryBand = $("#PlanningSalaryBand").val();

        return position;
    }
};