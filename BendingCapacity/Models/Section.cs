using System;
using System.ComponentModel;

namespace BendingCapacity.Models
{
	public enum Reinforcement { Pojedyncze, Podwójne }

	public class Section : INotifyPropertyChanged, IDataErrorInfo
	{
		private int _Height;
		private int _Width;
		private int _Cover;
		private int _BarDiameter;
		private int _BarCount;
		private int _BendingMoment;
		private Reinforcement _Reinforcement;

		public int SteelStrenght = 500; // [MPa], constant for AIIIN steels
		public int ErrorCount = 0;

		public Int32 Height
		{
			get
			{
				return _Height;
			}
			set
			{
				_Height = value;
				OnPropertyChanged("Height");
			}
		}
		public Int32 Width
		{
			get
			{
				return _Width;
			}
			set
			{
				_Width = value;
				OnPropertyChanged("Width");
			}
		}
		public Int32 Cover
		{
			get
			{
				return _Cover;
			}
			set
			{
				_Cover = value;
				OnPropertyChanged("Cover");
			}
		}
		public Int32 BarDiameter
		{
			get
			{
				return _BarDiameter;
			}
			set
			{
				_BarDiameter = value;
				OnPropertyChanged("BarDiameter");
			}
		}
		public Int32 BarCount
		{
			get
			{
				return _BarCount;
			}
			set
			{
				_BarCount = value;
				OnPropertyChanged("BarDiameter");
			}
		}
		public Int32 BendingMoment
		{
			get
			{
				return _BendingMoment;
			}
			set
			{
				_BendingMoment = value;
				OnPropertyChanged("BendingMoment");
			}
		}

		public Reinforcement tensionReinforcement
		{
			get
			{
				return _Reinforcement;
			}
			set
			{
				_Reinforcement = value;
				OnPropertyChanged("Reinforcement");
			}
		}

		public string Error
		{
			get;
			private set;
		}
		public string this[string columnName]
		{
			get
			{
				if (columnName == "Height")
				{
					if (this.Height > 5000 || this.Height <= 0)
					{
						Error = "Wysokość nie może być większa niż 5000 mm";
						ErrorCount += 1;
					}
					else
					{
						Error = null;
					}
				}

				else if (columnName == "Width")
				{
					if (this.Width > 1000 || this.Width <= 0)
					{
						Error = "Szerokość nie może być większa niż 1000 mm";
						ErrorCount += 1;
					}

					else
					{
						Error = null;
					}
				}
				else if (columnName == "Cover")
				{
					if (this.Cover < 10 || this.Cover > 100)
					{
						Error = "Otulina musi być w przedziale 10 - 100 mm";
						ErrorCount += 1;
					}

					else
					{
						Error = null;
					}
				}

				else if (columnName == "BarDiameter")
				{
					if (this.BarDiameter != 6 &&
						this.BarDiameter != 8 &&
						this.BarDiameter != 10 &&
						this.BarDiameter != 12 &&
						this.BarDiameter != 16 &&
						this.BarDiameter != 20 &&
						this.BarDiameter != 25 &&
						this.BarDiameter != 32)
					{
						Error = "Nie istnieją pręty o podanej średnicy";
						ErrorCount += 1;
					}

					else
					{
						Error = null;
					}
				}

				else if (columnName == "BarCount")
				{
					if (this.BarCount * this.steelArea < 0)
					{
						Error = "Podane zbrojenie jest mniejsze od minimalnego";
						ErrorCount += 1;
					}

					else if (this.BarCount * this.steelArea > 0.04 * Area)
					{
						Error = "Podane zbrojenie jest większe od maksymalnego";
						ErrorCount += 1;
					}

					else
					{
						Error = null;
					}
				}

				else if (columnName == "BendingMoment")
				{
					if (this.BendingMoment > 5000)
					{
						Error = "Wprowadzony moment przekracza nośność";
						ErrorCount += 1;
					}

					else
					{
						Error = null;
					}
				}


				return Error;

			}
		}

		//Returns area in mm^2
		public double steelArea { get { return _BarCount * _BarDiameter * _BarDiameter * Math.PI / 4; } }

		//Returns area in mm^2
		public int Area { get { return Width * Height; } }

		public event PropertyChangedEventHandler PropertyChanged;
		private void OnPropertyChanged(string propertyName)
		{
			PropertyChangedEventHandler handler = PropertyChanged;

			if (handler != null)
			{
				handler(this, new PropertyChangedEventArgs(propertyName));
			}

		}

		public virtual string WhoAreYou()
		{
			return "Jestem Przekrojem";
		}
	}

}
