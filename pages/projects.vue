<template>
  <section class="wrapper mx-auto">
    <h2>iOS apps</h2>
    <ul class="flex list-reset flex-wrap">
      <li v-for="app in iOSApps" :key="app.name" class="px-2 py-2">
        <a v-if="app.href !== '#'" :href="app.href" target="_blank">
          <img :title="app.name" :src="app.image" :alt="app.name" width="80" class="rounded-lg">
        </a>
        <img
          v-else
          :src="app.image"
          title="Not available anymore"
          :alt="app.name"
          width="80"
          class="opacity-50 rounded-lg"
        >
      </li>
    </ul>

    <h2>Web apps</h2>
    <ul class="flex flex-col list-reset">
      <li v-for="w in projects" :key="w.name" class="font-black text-xl md:text-5xl my-1">
        <a :href="w.href" target="_blank" class="link">
          {{ w.name }} <span v-if="w.tag">{{ w.tag }}</span>
        </a>
      </li>
    </ul>

    <h2>Side projects</h2>
    <ul class="flex flex-col list-reset mb-6">
      <li v-for="w in sideProjects" :key="w.name" class="font-black text-xl md:text-5xl my-1">
        <a :href="w.href" target="_blank" class="link">
          {{ w.name }} <span v-if="w.tag">{{ w.tag }}</span>
        </a>
      </li>
    </ul>
  </section>
</template>

<script>
export default {
  data() {
    return {
      projects: [
        { href: 'https://aircall.io/', name: 'Aircall' },
        { href: 'https://spendesk.com', name: 'Spendesk' },
        { href: 'https://luko.eu', name: 'Luko' },
        { href: 'https://todoist.com/templates', name: 'Todoist Templates' },
        { href: 'https://help.payfit.com', name: 'PayFit Help Center' },
        { href: 'https://payfit.com', name: 'PayFit' },
        { href: 'https://bureaunuits.com', name: 'Bureau Nuits' },
        { href: 'https://bidmotion.com', name: 'Bidmotion' },
        { href: 'https://cfoconnect.eu', name: 'CFO Connect' },
        {
          href: 'https://todoist.com/review/2018/you',
          name: 'Todoist Year in Review 2018'
        },
        { href: 'https://walnut.ai', name: 'Walnut' },
        { href: 'https://sublime.xyz', name: 'Sublime' },
        { href: 'https://miraex.com', name: 'Miraex' },
        { href: 'https://sodif-fleurs.com', name: 'SODIF Fleurs' },
        { href: 'https://supporterlart.com', name: "Supporter L'Art" },
        { href: 'https://muxumuxu.com', name: 'Muxu.Muxu' }
      ],
      sideProjects: [
        { href: 'https://cactomain.co', name: 'Cactomain' },
        {
          href: 'https://github.com/muxumuxu/hyper-link',
          name: 'HyperLink (Open Source)'
        }
      ],
      iOSApps: [
        {
          name: 'Hello Asso',
          image: '/ios/hello-asso.jpg',
          href:
            'https://itunes.apple.com/fr/app/helloasso-admin/id1384487970?mt=8'
        },
        {
          name: 'TRACE Radio',
          image: '/ios/trace-radio.png',
          href:
            'https://itunes.apple.com/fr/app/trace-radio-radios-fm-afro-urbaines/id1179170021?mt=8&l=en'
        },
        {
          name: 'Mindful Attitude',
          image: '/ios/mindful.png',
          href:
            'https://itunes.apple.com/fr/app/mindful-attitude-la-m%C3%A9ditation-des-entrepreneurs/id1184905321?mt=8&l=en'
        },
        {
          name: 'GRP',
          image: '/ios/grp.png',
          href:
            'https://itunes.apple.com/fr/app/grp-storyteller/id886223427?mt=8&l=en'
        },
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
        },
        {
          name: 'Sickle-O-Scope',
          image: '/ios/sickle-o-scope.png',
          href:
            'https://itunes.apple.com/us/app/sickle-o-scope/id978278725?mt=8&l=en'
        },
        {
          name: 'OenoSolutions',
          image: '/ios/oenosolutions.png',
          href:
            'https://itunes.apple.com/us/app/oenosolutions/id1211158481&mt=8&l=en'
        },
        {
          name: 'Worldmix',
          image: '/ios/worldmix.png',
          href:
            'https://itunes.apple.com/fr/app/worldmix-par-label-5-pour-r%C3%A9ussir-vos-cocktails/id1246744886?mt=8&l=en'
        },
        {
          name: "Dependn'",
          image: '/ios/dependn.png',
          href:
            'https://itunes.apple.com/fr/app/dependn-meilleure-app-pour-arreter-fumer-tabac-et-cannabis/id1093903062?mt=8&l=en'
        },
        {
          name: 'Kelmed',
          image: '/ios/kelmed.png',
          href: 'https://itunes.apple.com/fr/app/kelmed/id356406940?mt=8&l=en'
        },
        {
          name: 'MyMegaselfie',
          image: '/ios/megaselfie.png',
          href:
            'https://itunes.apple.com/fr/app/mymegaselfie/id1218197721?mt=8&l=en'
        },
        {
          name: 'Tellmewhere',
          image: '/ios/tellmewhere.png',
          href:
            'https://itunes.apple.com/fr/app/dismoio%C3%B9-restaurants-h%C3%B4tels-bars/id298056991?mt=8&l=en'
        },
        {
          name: 'Ura Camera Viewer',
          image: '/ios/ura.png',
          href:
            'https://itunes.apple.com/fr/app/ura-camera-viewer/id604813662?mt=8&l=en'
        },
        {
          name: 'Cocotte',
          image: '/ios/cocotte.png',
          href: '#'
        },
        {
          name: 'Koala',
          image: '/ios/koala.png',
          href: '#'
        },
        {
          name: 'Simply Market',
          image: '/ios/simply-market.png',
          href: '#'
        },
        {
          name: 'Kizym',
          image: '/ios/kizym.png',
          href: '#'
        },
        {
          name: 'Hedwig',
          image: '/ios/hedwig.png',
          href: '#'
        },
        {
          name: 'Woupee',
          image: '/ios/woupee.png',
          href: '#'
        }
      ]
    }
  }
}
</script>

<style lang="scss" scoped>
h2 {
  color: rgb(255, 205, 66);
  text-transform: uppercase;
  letter-spacing: 1.5px;
  font-size: 16px;
}
h2:not(:first-child) {
  padding: 60px 0.5rem 20px;
}
h2:first-child {
  padding: 0 0.5rem 20px;
}
</style>
