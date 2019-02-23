<template>
  <div>
    <section class="absolute pin w-full h-full flex items-center justify-center">
      <div class="flex flex-col md:flex-row justify-around w-full font-black text-5xl items-center justify-center">
        <router-link v-for="link in links" :key="link.href" :to="link.href" class="link my-5 no-underline">
          {{ link.name }}
        </router-link>
      </div>
    </section>

    <footer class="absolute pin-b pin-l pin-r flex justify-center py-5 z-10 flex items-center">
      <a href="mailto:david.miotti@protonmail.com" class="link no-underline font-black text-xl">Contact 📡</a>
    </footer>
  </div>
</template>

<script>
export default {
  data() {
    return {
      links: [
        { name: 'Links', href: '/links' },
        { name: 'Work', href: '/work' },
        { name: 'About', href: '/about' }
      ]
    }
  }
}
</script>
