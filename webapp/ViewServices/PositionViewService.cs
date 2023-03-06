using System;
using System.Collections.Generic;
using System.Linq;
using src.Models;
using WorkforcePlanning.Core.Data;
using WorkforcePlanning.Core.Data.Domain.ValueObjects;
using WorkforcePlanning.Core.Data.Repository;
using WorkforcePlanning.Core.Services;
using WorkforcePlanning.Core.Views.Models;


namespace WorkforcePlanning.Core.Views.ViewServices
{
    public class PositionViewService
    {
        private IPositionRepository PositionRepository { get; set; }
        private IPositionRevisionRepository RevisionRepository { get; set; }
        private PositionChangeIdentificationService PositionChangeService { get; set; }

        public PositionViewService() : this(new PositionRepository(), new PositionChangeIdentificationService())
        {
        }

        public PositionViewService(IPositionRepository positionRepository, PositionChangeIdentificationService positionChangeService)
        {
            PositionRepository = positionRepository;
            PositionChangeService = positionChangeService;
        }

        public List<PositionViewModel> Positions { get; set; }
        
        public PositionListViewModel LoadPositions(DateTime asOfDate)
        {
            var model = new PositionListViewModel();
            var postitions = PositionRepository.GetAll().ToList();
            model.AddPositions(postitions);
            model.AsOfDate = asOfDate;
            //var positions = PositionRepository.GetWhere(i => i.CreatedDate > asOfDate);

            //todo: re-enable this functionality
            //markRevisedPositions(positions, asOfDate);
            
            return model;
        }

        public PositionViewModel LoadPostion(string number)
        {
            var model = new PositionViewModel {Position = PositionRepository.Get(number)};

            return model;
        }
        

        private void markRevisedPositions(IEnumerable<Position> positions, DateTime asOfDate)
        {
            var previousPositions = PositionRepository.GetWhere(i => i.CreatedDate > asOfDate.AddDays(7) && i.CreatedDate < asOfDate);

            PositionChangeService.LatestPositions = positions.ToList();
            PositionChangeService.PriorPositions = previousPositions.ToList();
            PositionChangeService.IdentifyChanges();

            foreach (var position in positions)
            {
                Positions.Add(new PositionViewModel
                {
                    Position = position,
                    HasChanged = PositionChangeService.DetectedChanges.Exists(i => i.Position.Number == position.Number)
                });
            }
        }

        public void Save(Position position)
        {
            PositionRepository.Save(position);
        }

        public List<LookupItem> Search(string q)
        {
            var items = PositionRepository.GetWhere(i => i.Title.Contains(q) || i.Number.Contains(q));

            var list = new List<LookupItem>(items.Select(i => new LookupItem {Key = i.Number, Value = $"{i.Number}-{i.Title}"}));

            return list;
        }

        public OperationResult SaveRevision(PositionRevision position)
        {
            var result = new OperationResult();

            //result = RevisionRepository.Save(position);
            
            return result;
        }
    }
}