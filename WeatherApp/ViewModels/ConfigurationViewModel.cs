﻿using System;
using WeatherApp.Commands;
using WeatherApp.Properties;

namespace WeatherApp.ViewModels
{
    public class ConfigurationViewModel : BaseViewModel
    {
        private string apiKey;        
        public string ApiKey { 
            get => apiKey;
            set
            {
                apiKey = value;
                OnPropertyChanged();
            }
        }
        

        public DelegateCommand<string> SaveConfigurationCommand { get; set; }


        public ConfigurationViewModel()
        {
            Name = GetType().Name;

            ApiKey = GetApiKey();

            SaveConfigurationCommand = new DelegateCommand<string>(SaveConfiguration);
        }

        private void SaveConfiguration(string obj)
        {
            /// TODO 04 : Les tâches manquantes sont dans les XAML.
            /// TODO 04a : Sauvegarder la configuration
            Settings.Default.apiKey = apiKey;
            Settings.Default.Save();
            ApiKey = apiKey;
        }

        private string GetApiKey()
        {
            /// TODO 05 : Retourner la configuration
            return Settings.Default.apiKey;
        }

    }
}
