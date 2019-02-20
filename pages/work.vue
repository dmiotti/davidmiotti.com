<template>
  <section>
    <h3>
      Take a look at some projects I made with my own hands:
    </h3>
    <ul>
      <li v-for="w in projects" :key="w.name">
        <a :href="w.href" target="_blank">
          {{ w.name }} <span v-if="w.tag">{{ w.tag }}</span>
        </a>
      </li>
    </ul>

    <h3>
      Before that I was an iOS developer for 7 years, during this time I built lots of apps:
    </h3>
    <div v-for="cat in iOSApps" :key="cat.name">
      <h4>{{ cat.name }}</h4>
      <ul>
        <li v-for="app in cat.apps" :key="app.name">
          <a :href="app.href" target="_blank">
            <img :src="app.image" :alt="app.name" width="80">
            {{ app.name }}
          </a>
        </li>
      </ul>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      projects: [
        { href: 'https://aircall.io', name: 'Aircall' },
        { href: 'https://help.payfit.com', name: 'PayFit | Help Center' },
        {
          href: 'https://twist.com/compare_slack',
          name: 'Twist | Compare to Slack'
        },
        { href: 'https://twist.com/pricing', name: 'Twist | Pricing' },
        { href: 'https://spendesk.com', name: 'Spendesk' },
        { href: 'https://todoist.com/templates', name: 'Todoist | Templates' },
        { href: 'https://payfit.com', name: 'PayFit' },
        { href: 'https://bureaunuits.com', name: 'Bureau Nuits' },
        { href: 'https://getluko.com', name: 'Luko' },
        { href: 'https://bidmotion.com', name: 'Bidmotion' },
        { href: 'https://cfoconnect.eu', name: 'CFO Connect' },
        {
          href: 'https://github.com/muxumuxu/hyper-link',
          name: 'HyperLink',
          tag: 'Open Source'
        },
        {
          href: 'https://todoist.com/review/2018/you',
          name: 'Todoist | Year in Review 2018'
        },
        { href: 'https://walnut.ai', name: 'Walnut' },
        { href: 'https://sublime.xyz', name: 'Sublime' },
        { href: 'https://miraex.com', name: 'Miraex' },
        { href: 'https://cactomain.co', name: 'Cactomain' },
        { href: 'https://sodif-fleurs.com', name: 'SODIF Fleurs' },
        { href: 'https://supporterlart.com', name: "Supporter L'Art" },
        {
          href:
            'https://itunes.apple.com/fr/app/helloasso-admin/id1384487970?mt=8',
          name: 'Hello Asso',
          tag: 'iOS'
        },
        {
          href: 'https://itunes.apple.com/fr/app/trace-radio/id1179170021?mt=8',
          name: 'TRACE Radio',
          tag: 'iOS/Android'
        },
        { href: 'https://muxumuxu.com', name: 'Muxu.Muxu' }
      ]
    }
  }
}
</script>
