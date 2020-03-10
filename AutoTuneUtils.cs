using NAudio.Wave;
using VoiceRecorder.Audio;

public class AutoTuneUtils
{
	public static void ApplyAutoTune(string fileToProcess, string tempFile, AutoTuneSettings autotuneSettings)
	{
		using (WaveFileReader waveFileReader = new WaveFileReader(fileToProcess))
		{
			IWaveProvider source = new Wave16ToFloatProvider(waveFileReader);
			IWaveProvider sourceProvider = new AutoTuneWaveProvider(source, autotuneSettings);
			IWaveProvider waveProvider = new WaveFloatTo16Provider(sourceProvider);
			using (WaveFileWriter waveFileWriter = new WaveFileWriter(tempFile, waveProvider.WaveFormat))
			{
				byte[] array = new byte[8192];
				int num;
				do
				{
					num = waveProvider.Read(array, 0, array.Length);
					waveFileWriter.Write(array, 0, num);
				}
				while (num != 0 && waveFileWriter.Length < waveFileReader.Length);
			}
		}
	}
}
