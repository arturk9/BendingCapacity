namespace BendingCapacity.Models
{
	public class RectangularSection : Section
	{
		//0.001 ending is used to convert units from N*mm to kN*m
		public double BendingCapacity { get { return base.steelArea * SteelStrenght * (Height - Cover) * 0.001*0.001; } }
		public double UsedCapacity { get { return BendingMoment / BendingCapacity ; } }

		public RectangularSection()
		{
			return;
		}

		// Wiem ze to glupie ale bylo w wymogach, a nic lepszego nie wymsylilem
		public override string WhoAreYou()
		{
			return "Jestem przekrojem prostokątnym";
		}

		public RectangularSection(int SectionHeight, int SectionWidth, int SectionBarCover, int SectionBarDiameter, int SectionBarCount, int SectionBendingMoment, Reinforcement SectionTensionReinforcement)
		{
			Height = SectionHeight;
			Width = SectionWidth;
			Cover = SectionBarCover;
			BarDiameter = SectionBarDiameter;
			BarCount = SectionBarCount;
			BendingMoment = SectionBendingMoment;
			tensionReinforcement = SectionTensionReinforcement;
		}
	}

}
