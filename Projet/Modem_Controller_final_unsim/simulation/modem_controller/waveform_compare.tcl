# Close all WLF
dataset close -all

# Open 2 WLF files
dataset open {waveform_modem_ctrlr.wlf} waveform_modem_ctrlr
dataset open {waveform_modem_ctrlr_pr.wlf} waveform_modem_ctrlr_pr

# Compare
compare start waveform_modem_ctrlr waveform_modem_ctrlr_pr
compare add -recursive -all -wave *
compare run