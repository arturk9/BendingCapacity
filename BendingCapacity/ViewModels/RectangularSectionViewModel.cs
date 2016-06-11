using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Input;
using BendingCapacity.Commands;
using BendingCapacity.Models;

namespace BendingCapacity.ViewModels
{
	class RectangularSectionViewModel
	{
		[BindableAttribute(true)]
		public int AlternationCount { get; set; }

		private RectangularSection _RectangularSection;
		private RectangularSection _SelectedSection;

		public ICommand CalculateAndAddCommand { get; set; }
		public ICommand DeleteItemCommand { get; set; }
		public ICommand ClearListItemsCommand { get; set; }

		public RectangularSection RectangularSection{ get { return _RectangularSection; } }

		public ObservableCollection<RectangularSection> RectangularSectionList { get; set; }

		ObservableCollection<RectangularSection> rectangularSectionList = new ObservableCollection<RectangularSection>();

		public RectangularSection SelectedSection
		{
			get
			{
				return _SelectedSection;
			}

			set
			{
				_SelectedSection = value;
			}
		}

		public RectangularSectionViewModel()
		{
			_RectangularSection = new RectangularSection(0, 0, 0, 0, 0, 0, Reinforcement.Pojedyncze);
			RectangularSectionList = rectangularSectionList;
			CalculateAndAddCommand = new CalculateAndAddCommand(this);
			DeleteItemCommand = new DeleteCommand(this);
			ClearListItemsCommand = new ClearListItemsCommand(this);
		}

		public void RemoveItem()
		{
			rectangularSectionList.Remove(SelectedSection);
		}

		public void ClearListItems()
		{
			rectangularSectionList.Clear();
		}

		public void CalculateAndAdd()
		{
			RectangularSection Rect = new RectangularSection(
				RectangularSection.Height,
				RectangularSection.Width,
				RectangularSection.Cover,
				RectangularSection.BarDiameter,
				RectangularSection.BarCount,
				RectangularSection.BendingMoment,
				RectangularSection.tensionReinforcement);

			rectangularSectionList.Add(Rect);
		}
	}
}
