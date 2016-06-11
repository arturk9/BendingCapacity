using System;
using System.Windows.Input;
using BendingCapacity.ViewModels;

namespace BendingCapacity.Commands
{
	class DeleteCommand : ICommand
	{
		private RectangularSectionViewModel _ViewModel;

		public DeleteCommand(RectangularSectionViewModel viewModel)
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
			return true;
		}

		public void Execute(object parameter)
		{
			_ViewModel.RemoveItem();
		}
	}
}
