class common::applications::karabiner {

  include karabiner

  karabiner::profile { 'CODE': }

  karabiner::set { 'repeat.wait': value => '43', profile => 'CODE' }
  karabiner::set { 'parameter.holdingkeytokey_wait': value => '150', profile => 'CODE' }
  karabiner::set { 'parameter.keyoverlaidmodifier_timeout': value => '100', profile => 'CODE' }

  karabiner::remap { 'notsave.automatically_enable_keyboard_device': }
  karabiner::remap { 'general.dont_remap_any_pointing': }
  karabiner::remap { 'escape2backquote': }
  karabiner::remap { 'controlL2controlL_escape': }
  karabiner::remap { 'shiftparens': }

  karabiner::enable { 'private.tmux_simultaneous': }
  karabiner::enable { 'notsave.tab_numpad_numbers': }
  karabiner::enable { 'private.tab_numpad': }
  karabiner::enable { 'private.vim_on_f': }

  karabiner::private_xml { 'private.xml':
    content => '
      <?xml version="1.0"?>
      <root>
        <item>
          <name>Tab Numpad</name>
          <item>
            <name>Tab Numpad</name>
            <identifier vk_config="true">notsave.tab_numpad_numbers</identifier>
            <autogen>__KeyToKey__ KeyCode::N, KeyCode::KEY_1</autogen>
            <autogen>__KeyToKey__ KeyCode::M, KeyCode::KEY_2</autogen>
            <autogen>__KeyToKey__ KeyCode::COMMA, KeyCode::KEY_3</autogen>
            <autogen>__KeyToKey__ KeyCode::H, KeyCode::KEY_4</autogen>
            <autogen>__KeyToKey__ KeyCode::J, KeyCode::KEY_5</autogen>
            <autogen>__KeyToKey__ KeyCode::K, KeyCode::KEY_6</autogen>
            <autogen>__KeyToKey__ KeyCode::Y, KeyCode::KEY_7</autogen>
            <autogen>__KeyToKey__ KeyCode::U, KeyCode::KEY_8</autogen>
            <autogen>__KeyToKey__ KeyCode::I, KeyCode::KEY_9</autogen>
            <autogen>__KeyToKey__ KeyCode::SPACE, KeyCode::KEY_0</autogen>
          </item>
          <item>
            <name>Hold Tab+nm,hjkyui; to 1234567890</name>
            <identifier>private.tab_numpad</identifier>
            <autogen>
              __KeyOverlaidModifier__ KeyCode::TAB,
              KeyCode::VK_CONFIG_SYNC_KEYDOWNUP_notsave_tab_numpad_numbers,
              KeyCode::TAB
            </autogen>
          </item>
        </item>

        <item>
          <name>Vim Mode On F</name>
          <item>
            <name>Vim Mode On F</name>
            <identifier vk_config="true">notsave.vim_on_f</identifier>
            <autogen>__KeyToKey__ KeyCode::H, KeyCode::CURSOR_LEFT</autogen>
            <autogen>__KeyToKey__ KeyCode::J, KeyCode::CURSOR_DOWN</autogen>
            <autogen>__KeyToKey__ KeyCode::K, KeyCode::CURSOR_UP</autogen>
            <autogen>__KeyToKey__ KeyCode::L, KeyCode::CURSOR_RIGHT</autogen>
          </item>
          <item>
            <name>Hold F to use vim arrow keys.</name>
            <identifier>private.vim_on_f</identifier>
            <autogen>
              __KeyOverlaidModifier__ KeyCode::F,
              KeyCode::VK_CONFIG_SYNC_KEYDOWNUP_notsave_vim_on_f,
              KeyCode::F
            </autogen>
          </item>
        </item>
      </root>
    '
  }

}
