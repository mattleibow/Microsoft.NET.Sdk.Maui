using System.Reflection;

namespace sample;

public partial class MainPage : ContentPage
{
	int count = 0;

	public MainPage()
	{
		InitializeComponent();

		MauiVersionLabel.Text = typeof(MauiApp).Assembly.GetCustomAttribute<AssemblyInformationalVersionAttribute>().InformationalVersion.Split('+')[0];
	}

	private void OnCounterClicked(object sender, EventArgs e)
	{
		count++;

		if (count == 1)
			CounterBtn.Text = $"Clicked {count} time";
		else
			CounterBtn.Text = $"Clicked {count} times";

		SemanticScreenReader.Announce(CounterBtn.Text);
	}
}

