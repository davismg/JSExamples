using System;
using System.Collections.Generic;
using src.Models;
using WorkforcePlanning.Core.Data;

namespace WorkforcePlanning.Core.Views.Models
{
    public class PositionListViewModel : ViewModelBase
    {
        private List<PositionViewModel> _positions;

        public DateTime AsOfDate { get; set; }

        public List<PositionViewModel> Positions
        {
            get { return _positions ?? (_positions = new List<PositionViewModel>()); }
            set { _positions = value; }
        }

        public void AddPositions(List<Position> positions)
        {
            foreach (var position in positions)
            {
                Positions.Add(new PositionViewModel {Position = position});
            }
        }
    }
}