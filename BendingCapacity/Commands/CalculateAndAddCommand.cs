using System;
using System.Windows.Input;
using BendingCapacity.ViewModels;

namespace BendingCapacity.Commands
{
	class CalculateAndAddCommand : ICommand
	{
		private RectangularSectionViewModel _ViewModel;

		public CalculateAndAddCommand(RectangularSectionViewModel viewModel)
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
			return String.IsNullOrWhiteSpace(_ViewModel.RectangularSection.Error);
		}

		public void Execute(object parameter)
		{
			_ViewModel.CalculateAndAdd();
		}
	}
}
