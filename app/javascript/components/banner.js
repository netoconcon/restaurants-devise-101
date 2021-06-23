import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Os melhores restaurantes do mundo", "Segunda string"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };