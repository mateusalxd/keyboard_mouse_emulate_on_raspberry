# Make things work first 

## Step 1: Swap BT svc 

```
 sudo ./swapbtsvc.sh
```
 

## Step 2: Setup 

```
 sudo ./setup.sh
```
 
 
## Step 2: Run the Server

```
sudo ./boot.sh
```


## Step 3.1: Run Keyboard Client (using physical keyboard)

- Need a physical keyboard connected to raspberry PI board

```
./keyboard/kb_client.py
```

## Step 3.2: Run Keyboard Client (no need physical keyboard, send string through dbus)

- Dont need a physical keyboard connected to raspberry PI board

```
./keyboard/send_string.py "hello client, I'm a keyboard"
```

## Step 3.3: Run mouse client (using physical mouse)

- Need a physical mouse connected to raspberry PI board
```
./mouse/mouse_client.py
```

## Step 3.4: Run Mouse client (no need physical mouse, string mouse data through dbus)

- Dont need a physical mouse connected to raspberry PI board
```
./mouse/mouse_emulate.py 0 10 0 0
```

# To understand what I'm doing in the background 
[Make Raspberry Pi3 as an emulator bluetooth keyboard](https://thanhle.me/make-raspberry-pi3-as-an-emulator-bluetooth-keyboard/)

## Keyboard setup demo (old version)

https://www.youtube.com/watch?v=fFpIvjS4AXs

## Mouse setup demo (ongoing)
https://www.youtube.com/watch?v=fFpIvjS4AXs
