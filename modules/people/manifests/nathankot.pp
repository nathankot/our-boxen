class people::nathankot {

  $home     = "/Users/${::boxen_user}"

  include iterm2::dev
  include karabiner
  include karabiner::logint_item

  iterm2::colors { 'NK':
    ansi_0_color        => [0.07430712878704071, 0.073481492698192596, 0.073894307017326355]
    ansi_1_color        => [0.14783918857574463, 0.16453593969345093, 0.3843148946762085]
    ansi_2_color        => [0.37816053628921509, 0.99849504232406616, 0.66055959463119507]
    ansi_3_color        => [0.71580135822296143, 0.99778652191162109, 1]
    ansi_4_color        => [0.8546026349067688, 0.72058588266372681, 0.52310693264007568]
    ansi_5_color        => [0.55913424491882324, 0.43231356143951416, 0.82418340444564819]
    ansi_6_color        => [0.95604145526885986, 0.73233574628829956, 0.73586058616638184]
    ansi_7_color        => [0.097161337733268738, 0.097161337733268738, 0.097161337733268738]
    ansi_8_color        => [0.30733880400657654, 0.30733880400657654, 0.30384629964828491]
    ansi_9_color        => [0.068051367998123169, 0.12517450749874115, 0.18682833015918732]
    ansi_10_color       => [0.40145334601402283, 0.56006079912185669, 0.49726542830467224]
    ansi_11_color       => [0.80026060342788696, 0.99938231706619263, 1]
    ansi_12_color       => [0.45217052102088928, 0.39095780253410339, 0.31887146830558777]
    ansi_13_color       => [0.99792593717575073, 0.61130571365356445, 0.98613822460174561]
    ansi_14_color       => [0.42734736204147339, 0.37094661593437195, 0.75715041160583496]
    ansi_15_color       => [1, 1, 0.98863637447357178]
    background_color    => [0.061009347438812256, 0.061008308082818985, 0.06101013720035553]
    bold_color          => [0.99984121322631836, 1, 0.99987339973449707]
    cursor_color        => [0.50017809867858887, 0.50029021501541138, 0.50019419193267822]
    cursor_text_color   => [1, 1, 1]
    foreground_color    => [0.6701958179473877, 0.6701958179473877, 0.6701958179473877]
    selected_text_color => [0.0, 0.0, 0.0]
    selection_color     => [1, 0.8353000283241272, 0.70980000495910645]
  }

  property_list_key { 'iterm no arrangement':
    ensure     => present,
    path       => "/Users/${::boxen_user}/Library/Preferences/com.googlecode.iterm2.plist",
    key        => 'Default Arrangement Name',
    value      => 'Null'
  }

  property_list_key { 'Key maps':
    ensure     => present,
    path       => "/Users/${::boxen_user}/Library/Preferences/com.googlecode.iterm2.plist",
    key        => 'Keyboard Map',
    value      => {
      '0x2d-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x1f'
      },
      '0x32-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x00'
      },
      '0x33-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x1b'
      },
      '0x34-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x1c'
      },
      '0x35-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x1d'
      },
      '0x36-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x1e'
      },
      '0x37-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x1f'
      },
      '0x38-0x40000' => {
        'Action'     => '11',
        'Text'       => '0x7f'
      },
      '0x9-0x40000' => {
        'Action'    => '11',
        'Text'      => '9'
      },
      '0xf700-0x220000' => {
        'Action'        => '10',
        'Text'          => '[1;2A'
        },
      '0xf700-0x240000' => {
        'Action'        => '10',
        'Text'          => '[1;5A'
        },
      '0xf700-0x260000' => {
        'Action'        => '10',
        'Text'          => '[1;6A'
        },
      '0xf700-0x280000' => {
        'Action'        => '11',
        'Text'          => '0x1b 0x1b 0x5b 0x41'
      },
      '0xf701-0x220000' => {
        'Action'        => '10',
        'Text'          => '[1;2B'
        },
      '0xf701-0x240000' => {
        'Action'        => '10',
        'Text'          => '[1;5B'
        },
      '0xf701-0x260000' => {
        'Action'        => '10',
        'Text'          => '[1;6B'
        },
      '0xf701-0x280000' => {
        'Action'        => '11',
        'Text'          => '0x1b 0x1b 0x5b 0x42'
      },
      '0xf702-0x220000' => {
        'Action'        => '10',
        'Text'          => '[1;2D'
        },
      '0xf702-0x240000' => {
        'Action'        => '10',
        'Text'          => '[1;5D'
        },
      '0xf702-0x260000' => {
        'Action'        => '10',
        'Text'          => '[1;6D'
        },
      '0xf702-0x280000' => {
        'Action'        => '11',
        'Text'          => '0x1b 0x1b 0x5b 0x44'
      },
      '0xf703-0x220000' => {
        'Action'        => '10',
        'Text'          => '[1;2C'
        },
      '0xf703-0x240000' => {
        'Action'        => '10',
        'Text'          => '[1;5C'
        },
      '0xf703-0x260000' => {
        'Action'        => '10',
        'Text'          => '[1;6C'
        },
      '0xf703-0x280000' => {
        'Action'        => '11',
        'Text'          => '0x1b 0x1b 0x5b 0x43'
      },
      '0xf704-0x20000' => {
        'Action'       => '10',
        'Text'         => '[1;2P'
      },
      '0xf705-0x20000' => {
        'Action'       => '10',
        'Text'         => '[1;2Q'
        },
      '0xf706-0x20000' => {
        'Action'       => '10',
        'Text'         => '[1;2R'
        },
      '0xf707-0x20000' => {
        'Action'       => '10',
        'Text'         => '[1;2S'
        },
      '0xf708-0x20000' => {
        'Action'       => '10',
        'Text'         => '[15;2~'
        },
      '0xf709-0x20000' => {
        'Action'       => '10',
        'Text'         => '[17;2~'
        },
      '0xf70a-0x20000' => {
        'Action'       => '10',
        'Text'         => '[18;2~'
        },
      '0xf70b-0x20000' => {
        'Action'       => '10',
        'Text'         => '[19;2~'
        },
      '0xf70c-0x20000' => {
        'Action'       => '10',
        'Text'         => '[20;2~'
        },
      '0xf70d-0x20000' => {
        'Action'       => '10',
        'Text'         => '[21;2~'
        },
      '0xf70e-0x20000' => {
        'Action'       => '10',
        'Text'         => '[23;2~'
        },
      '0xf70f-0x20000' => {
        'Action'       => '10',
        'Text'         => '[24;2~'
        },
      '0xf729-0x20000' => {
        'Action'       => '10',
        'Text'         => '[1;2H'
        },
      '0xf729-0x40000' => {
        'Action'       => '10',
        'Text'         => '[1;5H'
        },
      '0xf72b-0x20000' => {
        'Action'       => '10',
        'Text'         => '[1;2F'
        },
      '0xf72b-0x40000' => {
        'Action'       => '10',
        'Text'         => '[1;5F'
        }
    },
    value_type => 'hash'
  }

  karabiner::remap { 'private.tmux_simultaneous': }
  karabiner::remap { 'notsave.tab_numpad_numbers': }
  karabiner::remap { 'general.dont_remap_any_pointing': }
  karabiner::remap { 'private.tab_numpad': }
  karabiner::remap { 'notsave.automatically_enable_pointing_device': }
  karabiner::remap { 'remap.escape2backquote': }
  karabiner::remap { 'remap.controlL2controlL_escape': }
  karabiner::remap { 'private.vim_on_f': }
  karabiner::remap { 'remap.shiftparens': }
  karabiner::remap { 'notsave.automatically_enable_keyboard_device': }

  karabiner::set { 'repeat.initial_wait': value => '200' }
  karabiner::set { 'repeat.wait': value => '33' }
  karabiner::set { 'parameter.holdingkeytokey_wait': value => '150' }
  karabiner::set { 'parameter.wait_before_and_after_a_modifier_key_event': value => '0' }

  karabiner::private_xml { 'private.xml':
    content => '
      <?xml version="1.0"?>
      <root>
        <appdef>
          <appname>ITERM</appname>
          <equal>com.googlecode.iterm2</equal>
        </appdef>

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
            <name>Hold Space+ASDFGHJKL; to 1234567890</name>
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

  # $my       = "${home}/my"
  # $dotfiles = "${my}/dotfiles"
  #
  # file { $my:
  #   ensure  => directory
  # }

  # repository { $dotfiles:
  #   source  => 'jbarnette/dotfiles',
  #   require => File[$my]
  # }
}
