<template>
  <div>
    <fixed-header />

    <header class="container mx-auto px-4">
      <div>
        <h2 class="font-black">
          Hi,
        </h2>
        <p>
          I'm a software engineer with 10 years of experience building Web and iOS applications.
          I'm passionated solving user interface problems.
        </p>
        <a href="mailto:david.miotti@gmail.com">
          Reach me 📩
        </a>
      </div>
    </header>

    <section>
      <div>
        <h2>If you are here, that's because you want to know more about me.</h2>
        <h3>
          I built <a href="https://muxumuxu.com" target="_blank">my company</a> two years ago based in <a href="https://goo.gl/maps/R9gnXLZHe552" target="_blank">Bordeaux 🍷</a> with 2 <span>designers</span> and 1 <span>developer</span>.
          For the past two years, I mostly build websites for companies I ❤️ using latest technologies: <a href="https://nuxtjs.org" target="_blank">Nuxt/VueJS</a>.
        </h3>

        <router-link to="/news">
          News
        </router-link>
        <router-link to="/about">
          About
        </router-link>
        <router-link to="/mantra">
          Mantra
        </router-link>
        <router-link to="/work">
          Work
        </router-link>
      </div>
    </section>

    <img src="/cover.jpg" alt="">

    <footer>
      Build with ❤️ by myself using <a href="https://nuxtjs.org" target="_blank">NuxtJS</a>.
    </footer>
  </div>
</template>

<script>
import FixedHeader from '@/components/fixed-header'
export default {
  components: { FixedHeader },
  data() {
    return {
      iOSApps: [
        {
          name: '💼 Business',
          apps: [
            {
              name: 'GRP',
              image: '/ios/grp.png',
              href:
                'https://itunes.apple.com/fr/app/grp-storyteller/id886223427?mt=8&l=en'
            },
            {
              name: 'Ura Camera Viewer',
              image: '/ios/ura.png',
              href:
                'https://itunes.apple.com/fr/app/ura-camera-viewer/id604813662?mt=8&l=en'
            }
          ]
        },
        {
          name: '📔 Catalogs',
          apps: [
            {
              name: 'Legrand Pro',
              image: '/ios/legrand-pro.png',
              href:
                'https://itunes.apple.com/fr/app/catalogue-legrand-pro/id357003647?mt=8&l=en'
            },
            {
              name: 'Legrand Conso',
              image: '/ios/legrand-conso.png',
              href:
                'https://itunes.apple.com/fr/app/catalogue-legrand-grand-public/id1220876174?mt=8&l=en'
            }
          ]
        },
        {
          name: '🎡 Entertainment',
          apps: [
            {
              name: 'MyMegaselfie',
              image: '/ios/megaselfie.png',
              href:
                'https://itunes.apple.com/fr/app/mymegaselfie/id1218197721?mt=8&l=en'
            }
          ]
        },
        {
          name: '🍹 Food & Drink',
          apps: [
            {
              name: 'Worldmix',
              image: '/ios/worldmix.png',
              href:
                'https://itunes.apple.com/fr/app/worldmix-par-label-5-pour-r%C3%A9ussir-vos-cocktails/id1246744886?mt=8&l=en'
            }
          ]
        },
        {
          name: '🎽 Health & Fitness',
          apps: [
            {
              name: "Dependn'",
              image: '/ios/dependn.png',
              href:
                'https://itunes.apple.com/fr/app/dependn-meilleure-app-pour-arreter-fumer-tabac-et-cannabis/id1093903062?mt=8&l=en'
            },
            {
              name: 'Cocotte',
              image: '/ios/cocotte.png',
              href:
                'https://itunes.apple.com/fr/app/coach-nourriture-enceinte-alimentation-grossesse/id1148406816?mt=8&l=en'
            },
            {
              name: 'Koala',
              image: '/ios/koala.png',
              href:
                'https://itunes.apple.com/us/app/koala-to-sleep-better-and-faster/id1224807364?l=en'
            },
            {
              name: 'Sickle-O-Scope',
              image: '/ios/sickle-o-scope.png',
              href:
                'https://itunes.apple.com/us/app/sickle-o-scope/id978278725?mt=8&l=en'
            },
            {
              name: 'Mindful Attitude',
              image: '/ios/mindful.png',
              href:
                'https://itunes.apple.com/fr/app/mindful-attitude-la-m%C3%A9ditation-des-entrepreneurs/id1184905321?mt=8&l=en'
            },
            {
              name: 'Kelmed',
              image: '/ios/kelmed.png',
              href:
                'https://itunes.apple.com/fr/app/kelmed/id356406940?mt=8&l=en'
            }
          ]
        },
        {
          name: '👪 Lifestyle',
          apps: [
            {
              name: 'Simply Market',
              image: '/ios/simply-market.png',
              href:
                'https://itunes.apple.com/fr/app/simply-market-supermarch%C3%A9-plus-proche-de-vous/id684892652?mt=8&l=en'
            },
            {
              name: 'Tellmewhere',
              image: '/ios/tellmewhere.png',
              href:
                'https://itunes.apple.com/fr/app/dismoio%C3%B9-restaurants-h%C3%B4tels-bars/id298056991?mt=8&l=en'
            }
          ]
        },
        {
          name: '🎧 Music',
          apps: [
            {
              name: 'TRACE Radio',
              image: '/ios/trace-radio.png',
              href:
                'https://itunes.apple.com/fr/app/trace-radio-radios-fm-afro-urbaines/id1179170021?mt=8&l=en'
            },
            {
              name: 'Kizym',
              image: '/ios/kizym.png',
              href:
                'https://itunes.apple.com/fr/app/kizym-concerts-en-france-ce-soir-pop-rap/id1105394462?mt=8&l=en'
            }
          ]
        },
        {
          name: '📈 Productivity',
          apps: [
            {
              name: 'Hedwig',
              image: '/ios/hedwig.png',
              href:
                'https://itunes.apple.com/us/app/schedule-texts-with-hedwig/id1193055246?mt=8&l=en'
            },
            {
              name: 'OenoSolutions',
              image: '/ios/oenosolutions.png',
              href:
                'https://itunes.apple.com/us/app/oenosolutions/id1211158481&mt=8&l=en'
            }
          ]
        },
        {
          name: '🛒 Shopping',
          apps: [
            {
              name: 'Woupee',
              image: '/ios/woupee.png',
              href:
                'https://itunes.apple.com/fr/app/woupee-shopping-promos-et-bonnes-adresses/id1181916300?mt=8&l=en'
            }
          ]
        }
      ]
    }
  }
}
</script>

<style lang="sass" scoped>
.github-link
  position: sticky
  top: 50px
  margin-right: 50px
  float: right
</style>
