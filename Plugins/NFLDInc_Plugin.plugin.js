//META{"name":"NFLDInc_Plugin"}*//

class NFLDInc_Plugin {
  getName() { return "NFLDInc_Plugin"; }

  getVersion() { return "2.0.0"; }

  getAuthor() { return "Nfld99"; }

  getDescription() { return "NFLDInc_Plugin."; }

  constructor() {
    this.patches = [];
  }

  //legacy
  load() { }

  start() {
    ZLibrary.PluginUpdater.checkForUpdate("NFLDInc_Plugin","2.0.0","https://raw.githubusercontent.com/NFLD99/Better-Discord/master/Plugins/NFLDInc_Plugin.plugin.js")
    // add installed tag to appmount
    var ele = document.getElementById("app-mount").hasAttribute("NFLDInc");
    if (ele == false) {
      document.getElementById("app-mount").setAttribute("NFLDInc", "Installed");
    }

    // Add current user to appmount
    var CUser = document.getElementsByClassName("container-3baos1")[0].childNodes[0].childNodes[0].childNodes[0].childNodes[0].childNodes[0];
    var Crx = /(avatars\/)(.*?)(?=\/)/g;
    var Csrc = CUser.src;
    var Cuser = Csrc.split(Crx)[2];
    var Cele = document.getElementById("app-mount").hasAttribute("NFLDIncCurrentUser");
    if (Cele == false) {
      document.getElementById("app-mount").setAttribute("NFLDIncCurrentUser", Cuser);
    }
  }

  observer() {
    // chat avatar
    var NFLDarray = document.getElementsByClassName("avatar-1BDn8e");
    var NFLDarrayLength = NFLDarray.length;
    var rx = /(avatars\/)(.*?)(?=\/)/g;
    for (var i = 0; i < NFLDarrayLength; i++) {
      var src = document.getElementsByClassName("avatar-1BDn8e")[i].src;
      var user = src.split(rx)[2];
      var newClassN = document.createElement("div");
      newClassN.setAttribute('class', 'NFLDIncChatUser')
      newClassN.setAttribute("NFLDIncChatUser", user);
      var ele = document.getElementsByClassName("avatar-1BDn8e")[i].parentElement.childNodes[3];
      if (ele == undefined) {
        document.getElementsByClassName("avatar-1BDn8e")[i].parentElement.appendChild(newClassN)
      }
    }

    // user popout
    var pOpen = document.getElementsByClassName("modal-3c3bKg").length
    if (pOpen == 1) {
      var PUser = document.getElementsByClassName("modal-3c3bKg")[0].children[2].children[0].children[0].children[0].children[0].children[0].children[0].children[0];
      var Prx = /(avatars\/)(.*?)(?=\/)/g;
      var Psrc = PUser.src;
      var Puser = Psrc.split(Prx)[2];
      var Pele = document.getElementsByClassName("inner-1ilYF7")[0].hasAttribute("NFLDIncPopoutUser");
      if (Pele == false) {
        document.getElementsByClassName("inner-1ilYF7")[0].setAttribute("NFLDIncPopoutUser", Puser);
      }
    }
  }

  stop() {
    while (this.patches.length) this.patches.pop()();
  }
}
