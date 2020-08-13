# Video Chat App with Phoenix

Spetial thanks to:
- [Build a Video Chat App in Phoenix LiveView](https://littlelines.com/blog/2020/07/06/building-a-video-chat-app-in-phoenix-liveview)


## Technologies used

- Erlang 23.0.3
- Elixir 1.10.4


## Notes

- How to check Erlang's release version
  - Sources: [How to get Erlang's release version number from a shell?](https://stackoverflow.com/questions/9560815/how-to-get-erlangs-release-version-number-from-a-shell)

```
gkz@local $ erl -eval '{ok, Version} = file:read_file(filename:join([code:root_dir(), "releases", erlang:system_info(otp_release), "OTP_VERSION"])), io:fwrite(Version), halt().' -noshell
23.0.3
```

