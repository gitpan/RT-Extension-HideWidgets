use inc::Module::Install;

RTx('RT-Extension-HideWidgets');
all_from('lib/RT/Extension/HideWidgets.pm');
readme_from('lib/RT/Extension/HideWidgets.pm');

requires_rt('3.8.1');

my $local_plugin_path = "$RT::LocalPluginPath";
unshift @INC, $local_plugin_path;

WriteAll();
