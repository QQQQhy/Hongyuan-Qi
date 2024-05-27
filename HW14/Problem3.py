import matplotlib.pyplot as plt
import numpy as np
import csv

# FIR filter coefficients
filter_coefficients = [
    0.019595449759383290,
    0.960809100481233247,
    0.019595449759383290,
]

# Function to compute the FFT of the data
def compute_fft(data, time):
    n = len(data)
    sample_rate = n / time[-1]
    freq_range = np.fft.fftfreq(n, d=1/sample_rate)
    one_side_freq = freq_range[:n//2]
    fft_values = np.fft.fft(data) / n
    one_side_fft = abs(fft_values[:n//2])
    return one_side_fft, one_side_freq

# Function to apply FIR filter
def apply_fir_filter(data, coefficients):
    window_size = len(coefficients) - 1
    fir_data = np.zeros(window_size)

    for value in data:
        window = np.append(fir_data[-window_size:], value)
        average = np.sum(np.multiply(window, coefficients))
        fir_data = np.append(fir_data, average)

    return fir_data[window_size:]

# Read data from the CSV file
time_data = []
amplitude_data = []

csv_file_path = 'C:/Users/17155/ME433/Hongyuan-Qi/HW14/sigD.csv'
with open(csv_file_path) as file:
    reader = csv.reader(file)
    for row in reader:
        time_data.append(float(row[0]))
        amplitude_data.append(float(row[1]))

# Apply the FIR filter
filtered_amplitude_data = apply_fir_filter(amplitude_data, filter_coefficients)

# Plot the original and filtered data
fig, ax = plt.subplots()
ax.plot(time_data, amplitude_data, color='black', label='Original Data')
ax.plot(time_data, filtered_amplitude_data, color='red', label='Filtered Data')
ax.set_xlabel('Time')
ax.set_ylabel('Amplitude')
ax.set_title('sigB, Cutoff = 196Hz, Transition = 196Hz, Method = Rectangular')
ax.legend()

# Save the plot to a file
output_file_path = 'C:/Users/17155/ME433/Hongyuan-Qi/HW14/Problem3_D.png'
plt.savefig(output_file_path)

# Display the plot
plt.show()
