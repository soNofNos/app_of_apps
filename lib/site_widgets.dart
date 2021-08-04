class SiteLinks {
  final String websiteName;
  final String websiteURL;
  final String websiteLogo;

  SiteLinks({
    required this.websiteLogo,
    required this.websiteName,
    required this.websiteURL,
  });
}

class SiteUtils {
  static List<SiteLinks> getSiteLinks() {
    return [
      SiteLinks(
          websiteLogo:
              "https://www.nairaland.com/attachments/1846559_nairaland_png343122d0e504ce8966018aabc3e89056",
          websiteName: "Nairaland",
          websiteURL: ""),
      SiteLinks(
          websiteLogo: "https://logodix.com/logo/614731.png",
          websiteName: "BBC",
          websiteURL: ""),
      SiteLinks(
          websiteLogo:
              "https://th.bing.com/th/id/OIP.uuxb16I2ouY0bvReG-7HbgHaHk?pid=ImgDet&rs=1",
          websiteName: "CNN",
          websiteURL: ""),
      SiteLinks(
          websiteLogo:
              "https://th.bing.com/th/id/R.8da360b71f493a89540c5b24f0c772d8?rik=gIrdy348aAs0ig&pid=ImgRaw",
          websiteName: "Facebook",
          websiteURL: ""),
      SiteLinks(websiteLogo: "https://th.bing.com/th/id/OIP.lzWPzjY4P8PfQ59-7mJKdgHaE8?pid=ImgDet&rs=1", websiteName: "Instagram", websiteURL: ""),
      SiteLinks(websiteLogo: "https://th.bing.com/th/id/R.e32173af14a3e907f974e5603eff64de?rik=Ob2zflQmhDfTOQ&pid=ImgRaw", websiteName: "Tiktok", websiteURL: ""),
      SiteLinks(websiteLogo: "", websiteName: "Google", websiteURL: ""),
      SiteLinks(websiteLogo: "", websiteName: "Youtube", websiteURL: "")
    ];
  }
}
