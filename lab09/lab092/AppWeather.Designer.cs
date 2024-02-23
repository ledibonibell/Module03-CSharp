namespace WeatherApp
{
    partial class AppWeather
    {
        private System.ComponentModel.IContainer components = null;
        private Label labelWeatherInfo;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }


        private void InitializeComponent()
        {
            listBoxCities = new ListBox();
            buttonLoadWeather = new Button();
            labelWeatherInfo = new Label();
            SuspendLayout();
            // 
            // listBoxCities
            // 
            listBoxCities.BackColor = Color.FromArgb(36, 32, 70);
            listBoxCities.BorderStyle = BorderStyle.FixedSingle;
            listBoxCities.Font = new Font("Consolas", 11F, FontStyle.Regular, GraphicsUnit.Point);
            listBoxCities.ForeColor = Color.FromArgb(241, 241, 242);
            listBoxCities.FormattingEnabled = true;
            listBoxCities.ItemHeight = 18;
            listBoxCities.Location = new Point(13, 14);
            listBoxCities.Margin = new Padding(4, 3, 4, 3);
            listBoxCities.Name = "listBoxCities";
            listBoxCities.Size = new Size(280, 200);
            listBoxCities.TabIndex = 0;
            // 
            // buttonLoadWeather
            // 
            buttonLoadWeather.BackColor = Color.FromArgb(18, 16, 35);
            buttonLoadWeather.FlatStyle = FlatStyle.System;
            buttonLoadWeather.Font = new Font("Consolas", 11F, FontStyle.Regular, GraphicsUnit.Point);
            buttonLoadWeather.ForeColor = Color.Gray;
            buttonLoadWeather.Location = new Point(13, 233);
            buttonLoadWeather.Margin = new Padding(4, 3, 4, 3);
            buttonLoadWeather.Name = "buttonLoadWeather";
            buttonLoadWeather.Size = new Size(280, 57);
            buttonLoadWeather.TabIndex = 1;
            buttonLoadWeather.Text = "Load Weather";
            buttonLoadWeather.UseVisualStyleBackColor = true;
            buttonLoadWeather.Click += buttonLoadWeather_Click;
            // 
            // labelWeatherInfo
            // 
            labelWeatherInfo.AutoSize = true;
            labelWeatherInfo.Font = new Font("Consolas", 11F, FontStyle.Regular, GraphicsUnit.Point);
            labelWeatherInfo.ForeColor = Color.FromArgb(241, 241, 242);
            labelWeatherInfo.Location = new Point(303, 14);
            labelWeatherInfo.Name = "labelWeatherInfo";
            labelWeatherInfo.Size = new Size(0, 18);
            labelWeatherInfo.TabIndex = 0;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(7, 6, 26);
            ClientSize = new Size(573, 346);
            Controls.Add(labelWeatherInfo);
            Controls.Add(buttonLoadWeather);
            Controls.Add(listBoxCities);
            Margin = new Padding(4, 3, 4, 3);
            Name = "Form1";
            Text = "Weather App";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        private ListBox listBoxCities;
        private Button buttonLoadWeather;
    }
}