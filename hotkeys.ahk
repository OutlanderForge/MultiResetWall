; v0.3.6
RAlt::Suspend ; Pause all macros
^LAlt:: ; Reload if macro locks up
  Reload
return
#IfWinActive, Minecraft
  {
    *U:: ExitWorld() ; Reset
    *CapsLock:: TinderMotion(True) ; Bg left swipe (reset)
    *+CapsLock:: TinderMotion(False) ; Bg right swipe (keep)
  }
return

#IfWinActive, Fullscreen Projector
  {
    *E::ResetInstance(MousePosToInstNumber())
    *R::SwitchInstance(MousePosToInstNumber())
    *F::FocusReset(MousePosToInstNumber())
    *T::ResetAll()
    +LButton::LockInstance(MousePosToInstNumber()) ; lock an instance so the above "blanket reset" functions don't reset it

    ; Reset keys (1-9)
    *1::
      ResetInstance(1)
    return
    *2::
      ResetInstance(2)
    return
    *3::
      ResetInstance(3)
    return
    *4::
      ResetInstance(4)
    return
    *5::
      ResetInstance(5)
    return
    *6::
      ResetInstance(6)
    return
    *7::
      ResetInstance(7)
    return
    *8::
      ResetInstance(8)
    return
    *9::
      ResetInstance(9)
    return

    ; Switch to instance keys (Shift + 1-9)
    *+1::
      SwitchInstance(1)
    return
    *+2::
      SwitchInstance(2)
    return
    *+3::
      SwitchInstance(3)
    return
    *+4::
      SwitchInstance(4)
    return
    *+5::
      SwitchInstance(5)
    return
    *+6::
      SwitchInstance(6)
    return
    *+7::
      SwitchInstance(7)
    return
    *+8::
      SwitchInstance(8)
    return
    *+9::
      SwitchInstance(9)
    return
  }
