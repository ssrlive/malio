<!DOCTYPE html>
<html lang="en">

<head>
  {include file='user/head.tpl'}

  <title>iOS 使用教程 &mdash; {$config["appName"]}</title>

  <style>
    .btn-app {
      background: linear-gradient(to right, #3671b9, #3671b9) !important;
      color: white !important;
      border-color: #3671b9;
      box-shadow: 0 2px 6px #3671b99a;
      margin-bottom: 16px;
    }

    .card a {
      color: #3671b9;
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
      color: #3671b9;
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
      background-color: #3671b9;
      display: inline-block;
      float: left;
      margin-top: 6px;
      margin-right: 8px;
    }

    .faq p {
      font-weight: normal !important;
    }

    .qrcode-btn {
      color: #a2a2a2;
      margin-left: 2px;
      background: none;
      margin-bottom: 16px;
    }

    .qrcode-btn:hover,
    .qrcode-btn:active,
    .qrcode-btn:focus {
      color: black;
      border-color: none;
      box-shadow: none;
      background: none;
    }

    .qrcode-btn i {
      vertical-align: -1px !important;
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
            <h1>iOS 使用教程</h1>
            {if $malio_config['display_more_app_button'] == true}
            <div class="section-header-breadcrumb">
              <div class="btn-group dropleft">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                其他客户端
                </button>
                <div class="dropdown-menu dropleft">
                  <a class="dropdown-item has-icon" href="/user/tutorial?os=ios&client=quantumult"><i class="malio-quantumult"></i>Quantumult</a>
                </div>
              </div>
            </div>
            {/if}
          </div>
          <div class="section-body">
            <div class="row mt-sm-4">
              <div class="col-12">
                <div class="card">
                  <div class="card-body">
                    <ul class="steps">
                      <li>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">1.</label>
                            {if $malio_config['enable_ios_apple_id'] == true}
                              <p>在 App Store 登录本站提供的美区 Apple ID 下载客户端。<br>
                                为了保护您的隐私，请勿在手机设置里直接登录，仅在 App Store 登录即可。
                              </p>
                              {if $user->class>0}
                              <p>Apple ID：<a class="copy-text" data-clipboard-text="{$malio_config['ios_apple_id']}" href="##">{$malio_config['ios_apple_id']}</a><br>
                                密码：<a class="copy-text" data-clipboard-text="{$malio_config['ios_apple_id_password']}" href="##">********(点击复制)</a></p>
                              {else}
                              <p>购买会员计划后，刷新本页即可看到免费提供的 Apple ID。</p>
                              {/if}
                            {else}
                              <p>这是一个付费软件，你需要购买才能使用。</p>
                            {/if}
                            <a href="https://apps.apple.com/us/app/shadowrocket/id932747118" class="btn btn-icon icon-left btn-primary btn-app btn-lg btn-round" target="blank"><i class="fab fa-apple"></i> 打开 App Store 下载</a>
                            <button id="shadowrocket-download-qrcode" type="button" class="qrcode-btn btn">
                              <i class="fas fa-qrcode"></i>
                            </button>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic hide-on-mobie">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/blank-blue.jpg">
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">2.</label>
                            <p>点击这个按钮 ，会自动跳转添加订阅。</p>
                            <a href="##" class="btn btn-icon icon-left btn-primary btn-app btn-lg btn-round" onclick="importSublink('shadowrocket')"><i class="malio-shadowrocket"></i> 一键导入 Shadowrocket 配置</a>
                            <button id="shadowrocket-qrcode" type="button" class="qrcode-btn btn">
                              <i class="fas fa-qrcode"></i>
                            </button>
                            <p class="text-muted" style="font-size: 13px">一键导入不成功？<a href="#manual-import" class="text-muted "><u>试试手动导入</u> →</a></p>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img src="/theme/malio/img/tutorial/blank-blue.jpg">
                            </div>
                            
                          </div>
                        </div>
                      </li>
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">3.</label>
                            <p>点击底栏的配置，选择添加配置，粘贴配置链接，下载。随后点击 远程文件 中新增的配置文件地址，在弹出的菜单中选择第二个「使用配置」，此时 APP 会自动开始下载配置并应用配置。回到首页，点击进入「全局路由」将其更改为 配置。</p>
                            <a href="##" class="btn btn-icon icon-left btn-primary btn-app copy-text btn-lg btn-round" data-clipboard-text="https://raw.githubusercontent.com/Hackl0us/Surge-Rule-Snippets/master/LAZY_RULES/Shadowrocket.conf"><i class="far fa-copy"></i> 复制配置链接</a>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/blank-blue.jpg">
                            </div>
                            
                          </div>
                        </div>
                      </li>
                      <li>
                        <hr>
                        <div class="row">
                          <div class="left-text col-xs-12 col-md-6 col-lg-6">
                            <label class="step-no">4.</label>
                            <p>点击底栏的首页，随意选择一个节点，打开顶部的开关即可启用。</p>
                          </div>
                          <div class="right-pic col-xs-12 col-md-6 col-lg-6">
                            <div class="tutorial-pic">
                              <img style="border:1px solid #f0f0f0" src="/theme/malio/img/tutorial/blank-blue.jpg">
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
                      <div class="row mt-2">
                        <div id="manual-import" class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                          <h6>Shadowrocket 无法一键导入，如何手动导入配置？</h6>
                          <p class="mb-4 font-13">
                            <a href="##" class="copy-text" data-clipboard-text="{$subInfo['shadowrocket']}{if $malio_config['enable_sub_extend'] == true}&extend=1{/if}">点此复制 Shadowrocket 订阅链接</a>，打开 Shadowrocket 首页，点击右上角的加号，再次点击第一行的「类型」，选择 Subscribe。在「备注」中输入{$config['appName']}，随后在「URL」中粘贴订阅链接。
                          </p>
                        </div>
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                          <h6>Shadowrocket 如何更新节点？</h6>
                          <p class="mb-4 font-13">
                            在首页找到名称为{$config['appName']}的服务器订阅，点击右边的  ，点击右上角完成。我们建议用户打开自动更新开关，点击底部导航栏的「设置」进入设置页面，随后往下划至最底部，进入「服务器订阅」子页面。将「打开时更新」的开关 打开。
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

  <script src="https://fastly.jsdelivr.net/npm/bowser@1.9.4/bowser.min.js"></script>
  <script src="https://fastly.jsdelivr.net/npm/kjua@0.1.2/dist/kjua.min.js"></script>

  <script>
    function importSublink(client) {
      if (client == 'shadowrocket') {
        oneclickImport('shadowrocket','{$subInfo["shadowrocket"]}{if $malio_config["enable_sub_extend"] == true}&extend=1{/if}')
      };
    }
    createQRCode('shadowrocket-download-qrcode', 'https://itunes.apple.com/us/app/shadowrocket/id932747118','扫描二维码下载客户端')
    createQRCode('shadowrocket-qrcode', "shadowrocket://add/sub://" + btoa('{$subInfo["shadowrocket"]}{if $malio_config["enable_sub_extend"] == true}&extend=1{/if}') + "?remarks={$config[appName]}", '打开手机相机，扫描二维码导入')
    var appName = '{$config["appName"]}';
  </script>
</body>

</html>