<!DOCTYPE html>
<html lang="en">

<head>
  {include file='user/head.tpl'}

  <title>Windows 使用教程 &mdash; {$config["appName"]}</title>

  <style>
    .btn-app {
      background: linear-gradient(to right, #224F87, #132748) !important;
      color: white !important;
      border-color: #224F87;
      box-shadow: 0 2px 6px rgba(34, 79, 135, 0.42);
      margin-bottom: 16px;
    }

    .card a {
      color: #224F87;
    }

    .steps {
      margin: 10px;
      padding: 0px;
    }

    li {
      list-style: none;
    }

    .step-no {
      font-size: 30px;
      font-weight: 700;
      color: #2E46AD;
    }

    .right-pic {
      text-align: right;
    }

    .tutorial-pic img {
      border-radius: 5px;
      width: 100%;
      max-width: 24rem;
    }

    @media (max-width: 767px) {
      .right-pic {
        display: block;
      }

      .tutorial-pic img {
        margin-top: 16px;
        border-radius: 5px;
        max-width: 100%;
      }

      .qrcode-btn {
        display: none
      }

      .hide-on-mobie {
        display: none;
      }
    }

    .faq h6 {
      color: #191d21;
    }

    .faq h6:before {
      content: ' ';
      border-radius: 5px;
      height: 6px;
      width: 6px;
      background-color: #2E46AD;
      display: inline-block;
      float: left;
      margin-top: 6px;
      margin-right: 8px;
    }

    .faq p {
      font-weight: normal !important;
    }
  </style>

</head>

<body>
  <div id="app">
    <div class="main-wrapper">
      {include file='user/navbar.tpl'}

      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <div class="section-header-back">
              <a href="/user/tutorial" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
            <h1>Windows 使用教程</h1>
            {if $malio_config['display_more_app_button'] == true || $malio_config['enable_windows_gaming_tutorial'] == true}
            <div class="section-header-breadcrumb">
              {if $malio_config['enable_windows_gaming_tutorial'] == true}
              <div id="checkin-div" class="breadcrumb-item active">
                <a href="/user/tutorial?os=windows&client=netch" class="btn btn-icon icon-left btn-primary {if $malio_config['display_more_app_button'] == true}mr-2{/if}"><i class="fas fa-gamepad"></i> 游戏加速教程</a>
              </div>
              {/if}
              {if $malio_config['display_more_app_button'] == true}
              <div class="btn-group dropleft">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  其他客户端
                </button>
                <div class="dropdown-menu dropleft">
                  <a class="dropdown-item has-icon" href="/user/tutorial?os=windows&client=ssr"><i class="malio-ssr"></i>SSR</a>
                </div>
              </div>
              {/if}
            </div>
            {/if}
          </div>
          <div class="section-body">
            <div class="row mt-sm-4">
              <div class="col-12">
                {if !URL::SSCanConnect($user, $mu) && !(in_array("v2ray",$malio_config['support_sub_type']))}
                <div class="alert alert-warning alert-has-icon">
                  <div class="alert-icon"><i class="fas fa-exclamation-triangle"></i></div>
                  <div class="alert-body">
                    <div class="alert-title">无法使用此客户端</div>
                    您的加密、混淆和协议不兼容 SS 客户端。如需使用，请在 <a href="/user/edit"><u>连接设置</u></a> 页面更改 “加密方式”、“混淆和协议” 为 SS 可连接的选项。
                  </div>
                </div>
                {/if}
                <div class="card">
                  <div class="card-body">
                    <ul class="steps">
                      <li>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">1.</label>
                            <p>下载 Clash for Windows 客户端。</p>
                            <p>安装时请选择 为使用这台电脑的任何人安装（所有用户）<br>
                              运行时请右键，以管理员身份运行
                            </p>
                            <a href="/client-download/Clash-Windows.7z" class="btn btn-icon icon-left btn-primary btn-app btn-lg btn-round" target="blank"><i class="fas fa-download"></i> 下载客户端(7-Zip)</a>
                            <a href="/client-download/Clash-Windows.exe" class="btn btn-icon icon-left btn-primary btn-app btn-lg btn-round" target="blank"><i class="fas fa-download"></i> 下载客户端(EXE)</a>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic hide-on-mobie">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/windows-cfw-1.png">
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">2.</label>
                            <p>点击这个按钮 </p>
                            <a href="##" class="btn btn-icon icon-left btn-primary btn-app btn-lg btn-round" onclick="importSublink('clash')"><i class="malio-clash"></i> 一键导入托管配置到 Clash for Windows</a>
                            <p class="text-muted" style="font-size: 13px">一键导入不成功？<a href="#manual-import" class="text-muted "><u>试试手动导入</u> →</a></p>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img src="/theme/malio/img/tutorial/windows-cfw-2.png">
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">3.</label>
                            <p>打开客户端的侧边栏的 General，勾选 System Proxy 即可启用。</p>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/windows-cfw-3.png">
                            </div>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="text-center">
                  <h3 style="margin-top: 50px;margin-bottom: 30px;"></h3>
                </div>
                <div class="card">
                  <div class="card-body">
                    <div class="faq">
                      <div class="row mt-2 mb-2">
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6" id="manual-import">
                          <h6>Clash for Windows 无法一键导入，如何手动导入配置？</h6>
                          <p class="mb-4 font-13">
                            <a href="##" class="copy-text" data-clipboard-text="{$subInfo['clash']}{if $malio_config['enable_sub_extend'] == true}&extend=1{/if}">点此复制 Clash 托管配置链接</a>，打开客户端的侧边栏的 Profiles，粘贴托管配置链接到左下角，点击 Direct Mode。
                          </p>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                          <h6>启用 System Proxy 后，UWP 应用无法使用？</h6>
                          <p class="mb-4 font-13">
                            选择侧边栏里的 General，然后点击 EnableLoopback.exe，在打开的应用列表里勾选 UWP 应用，最后点击列表上面的 Save Changes 即可。
                            更多详情请查看 <a href="https://github.com/Fndroid/clash_for_windows_pkg/wiki/UWP%E5%BA%94%E7%94%A8%E8%81%94%E7%BD%91" target="blank"><i class="fab fa-github"></i> Clash for Windows</a>
                          </p>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                          <h6>Clash for Windows 如何切换节点？</h6>
                          <p class="mb-4 font-13">
                            选择侧边栏里的 Proxies，点击 <i class="fas fa-eye"></i> 展开分组，选择 Proxy 分组下的节点即可切换节点。
                          </p>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                          <h6>Clash for Windows 如何更新节点？</h6>
                          <p class="mb-4 font-13">
                            选择侧边栏里的 Profiles，然后点击 {$config['appName']}.yml 右下角的 <i class="fas fa-redo-alt"></i> 按钮即可更新节点。
                          </p>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                          <h6>Clash for Windows 如何进行 url-test 测试延迟？</h6>
                          <p class="mb-4 font-13">
                            选择侧边栏里的 Proxies，点击 Proxy 分组旁边的 <i class="fas fa-bolt"></i> 按钮。
                          </p>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                          <h6>Clash for Windows 所有节点测试延迟都显示 Timeout 怎么办？</h6>
                          <p class="mb-0 font-13">
                            访问 <a href="https://time.is" target="blank">https://time.is <i class="fas fa-external-link-alt"></i></a> ，确保你的电脑系统时间与标准时间的时间差不超过 1 分钟。
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      {include file='user/footer.tpl'}
    </div>
  </div>

  {include file='user/scripts.tpl'}

  <script>
    function importSublink(client) {
      if (client == 'clash') {
        oneclickImport('clash', '{$subInfo["clash"]}{if $malio_config["enable_sub_extend"] == true}&extend=1{/if}')
      };
    }
    appName = "{$config['appName']}";
  </script>
</body>

</html>