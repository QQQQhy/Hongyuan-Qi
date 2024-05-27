import matplotlib.pyplot as plt
import numpy as np
import csv

# Function to compute the FFT of the data
def compute_fft(data, time):
    n = len(data)
    sample_rate = n / time[-1]
    freq_range = np.fft.fftfreq(n, d=1/sample_rate)
    one_side_freq = freq_range[:n//2]
    fft_values = np.fft.fft(data) / n
    one_side_fft = abs(fft_values[:n//2])
    return one_side_fft, one_side_freq

# Function to compute the moving average filter
def moving_average_filter(data, window_size):
    return np.convolve(data, np.ones(window_size)/window_size, mode='same')

# Read data from the CSV file
time_data = []
amplitude_data = []

csv_file_path = 'C:/Users/17155/ME433/Hongyuan-Qi/HW14/sigD.csv'
with open(csv_file_path) as f:
    reader = csv.reader(f)
    for row in reader:
        time_data.append(float(row[0]))
        amplitude_data.append(float(row[1]))

# Apply the moving average filter
window_size = 70
filtered_data = moving_average_filter(amplitude_data, window_size)

# Plot the original and filtered data
fig, ax = plt.subplots()
ax.plot(time_data, amplitude_data, color='black', label='Original Data')
ax.plot(time_data, filtered_data, color='red', label='Filtered Data')
ax.set_xlabel('Time')
ax.set_ylabel('Amplitude')
ax.set_title(f'Problem 1, window size = {window_size}')
ax.legend()

# Save the plot to a file
output_file_path = 'C:/Users/17155/ME433/Hongyuan-Qi/HW14/Problem1_D.png'
plt.savefig(output_file_path)

# Display the plot
plt.show()
