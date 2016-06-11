using System;
using System.Windows.Input;
using BendingCapacity.ViewModels;

namespace BendingCapacity.Commands
{
	class ClearListItemsCommand : ICommand
	{
		private RectangularSectionViewModel _ViewModel;

		public ClearListItemsCommand(RectangularSectionViewModel viewModel)
		{
			_ViewModel = viewModel;
		}

		public event EventHandler CanExecuteChanged
		{
			add { CommandManager.RequerySuggested += value; }
			remove { CommandManager.RequerySuggested -= value; }
		}

		public bool CanExecute(object parameter)
		{
			if (_ViewModel.RectangularSectionList.Count == 0)
			{
				return false;
			}

			else
			{
				return true;
			}
		}

		public void Execute(object parameter)
		{
			_ViewModel.ClearListItems();
		}
	}
}
