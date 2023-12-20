from dataclasses import dataclass

@dataclass(frozen=True)
class Config:
    supported_audio_formats: tuple = ("mp3", "wav", "ogg", "flac")
