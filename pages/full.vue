<template>
  <section>
    <section class="container mx-auto bio">
      <p>Hi, I'm David, a regular 1x developer. I passoniated by web and iOS development. I worked for great companies like
        <a class="small-link" href="https://spendesk.com">Spendesk</a>,
        <a class="small-link" href="https://payfit.com">PayFit</a>,
        <a class="small-link" href="https://todooist.com">Todoist</a>,
        <a class="small-link" href="https://twist.com">Twist</a>,
        <a class="small-link" href="https://getluko.com">Luko</a>,
        <a class="small-link" href="https://helloasso.com">HelloAsso</a> and more.
      </p>

      <p>You can find public stuff I have crafted in the <router-link class="small-link" to="projects">projects</router-link> section.</p>

      <p>
        I love computer technologies and reading articles how to improve myself as a developer.
        From the end of school, I worked on many projects of various sizes.
        I always want to learn new stuff and when I work I like to craft things with a high attention to details.
      </p>

      <p>
        I like working on long terms projects, creating modern development environments with planning, CI and managing a team of developers and designers.
        I love technologies and programming languages, this is why I know much more languages than Swift. Nowadays, I'm doing some HTML/CSS/JS almost every work day.
      </p>

      <p>
        I also made few projects on my own I will be happy to discuss. 2 are alive but only one is totally public. You can find it there <a class="small-link no-underline" href="https://cactomain.co" target="_blank">Cactomain</a>.
      </p>

      <h2 class="text-2xl mb-6">Professional career</h2>

      <ul class="list-reset">
        <li v-for="job in jobs" :key="job.company" class="text-xl mb-3">
          <div class="mb-2">
            <a class="small-link" :href="job.website" target="_blank">
              <strong>{{ job.company }}</strong>
            </a>

            ({{ job.location }}) – {{ job.date }}
          </div>
          <p>{{ job.desc }}</p>
          <div class="flex flex-wrap">
            <span v-for="tool in job.tools" :key="tool" class="rounded-full bg-indigo uppercase px-2 py-1 text-xs font-bold mr-3 mb-4">
              {{ tool }}
            </span>
          </div>
        </li>
      </ul>

      <p>If you want to know more about me, don't hesitate to <a href="mailto:david.miotti@protonmail.com" class="small-link">contact me</a>.</p>
    </section>

    <section class="container mx-auto mb-10">
      <h2 class="text-2xl mb-6">Projects</h2>
      <ul class="flex items-center justify-center list-reset flex-wrap py-5">
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
            class="opacity-50 rounded-lg">
        </li>
      </ul>
      <ul class="flex flex-col items-center justify-center list-reset">
        <li v-for="w in projects" :key="w.name" class="font-black text-xl md:text-5xl my-1">
          <a :href="w.href" target="_blank" class="link">
            {{ w.name }} <span v-if="w.tag">{{ w.tag }}</span>
          </a>
        </li>
      </ul>
    </section>

    <img src="/cover.jpg" alt="">
    <p class="text-base italic">*Me doing a Swift formation.</p>
  </section>
</template>

<script>
export default {
  data() {
    return {
      programingLanguages: ['JavaScript', 'Ruby', 'Swift'],
      tools: ['VSCode', 'XCode', 'git', 'Sketch', 'Abstract'],
      jobs: [
        {
          company: 'Muxu.Muxu',
          location: 'Bordeaux',
          website: 'https://muxumuxu.com',
          date: '2016-2019 (2 years)',
          tools: [
            'Docker',
            'VueJS',
            'SASS',
            'Jest',
            'Mocha',
            'GraphQL / Apollo',
            'Heroku / Netlify',
            'Cloudflare'
          ],
          desc: 'Team management with 3 devs'
        },
        {
          company: 'Wopata',
          location: 'Bordeaux',
          website: null,
          date: '2013-2016 (4.5 years)',
          tools: ['iOS', 'Cocoapods', 'Carthage', 'Bamboo CI'],
          desc:
            'When I left Tellmewhere, I was tired of working in Paris. I found a really nice agency in Bordeaux. In this adventure I mainly built many iOS apps and have done 2 back-end projects.'
        },
        {
          company: 'Tellemewhere',
          location: 'Paris',
          website: 'https://dismoiou.fr',
          date: '2011-2012 (2 years)',
          tools: [
            'iOS',
            'Cocoapods',
            'Carthage',
            'XCTest',
            'CoreData',
            'Jenkins CI'
          ],
          desc: 'I was working on the iOS app of Tellmewhere'
        },
        {
          company: 'SUPINFO',
          location: 'Paris/London',
          website: 'https://supinfo.com',
          date: '2007-2012',
          tools: ['C#', 'Oracle'],
          desc: 'Learn programing + Team management'
        },
        {
          company: 'DUT Informatique',
          location: 'Lille',
          website: 'http://www.iut-a.univ-lille.fr/dut-info/',
          date: '2005-2007',
          tools: ['JAVA', 'J2EE', 'Spring'],
          desc: 'Learn programming'
        }
      ],
      projects: [
        { href: 'https://cactomain.co', name: 'Cactomain' },
        { href: 'https://muxumuxu.com', name: 'Muxu.Muxu' },
        { href: 'https://spendesk.com', name: 'Spendesk' },
        { href: 'https://getluko.com', name: 'Luko' },
        { href: 'https://todoist.com/templates', name: 'Todoist Templates' },
        { href: 'https://help.payfit.com', name: 'PayFit Help Center' },
        { href: 'https://payfit.com', name: 'PayFit' },
        { href: 'https://bureaunuits.com', name: 'Bureau Nuits' },
        { href: 'https://bidmotion.com', name: 'Bidmotion' },
        { href: 'https://cfoconnect.eu', name: 'CFO Connect' },
        {
          href: 'https://github.com/muxumuxu/hyper-link',
          name: 'HyperLink (Open Source)'
        },
        {
          href: 'https://todoist.com/review/2018/you',
          name: 'Todoist Year in Review 2018'
        },
        { href: 'https://walnut.ai', name: 'Walnut' },
        { href: 'https://sublime.xyz', name: 'Sublime' },
        { href: 'https://miraex.com', name: 'Miraex' },
        { href: 'https://sodif-fleurs.com', name: 'SODIF Fleurs' },
        { href: 'https://supporterlart.com', name: "Supporter L'Art" }
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
.bio {
  p {
    @apply leading-normal mb-6 text-2xl;
  }
}
</style>
