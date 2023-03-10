{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_imageless_framebuffer

module Vulkan.Types.Struct.VkFramebufferAttachmentImageInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkFramebufferAttachmentImageInfoKHR" #-} VkFramebufferAttachmentImageInfoKHR =
       VkFramebufferAttachmentImageInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkImageCreateFlags -- ^ Image creation flags
         , usage :: VkImageUsageFlags -- ^ Image usage flags
         , width :: #{type uint32_t}
         , height :: #{type uint32_t}
         , layerCount :: #{type uint32_t}
         , viewFormatCount :: #{type uint32_t}
         , pViewFormats :: Ptr VkFormat
         }

instance Storable VkFramebufferAttachmentImageInfoKHR where
  sizeOf    _ = #{size      VkFramebufferAttachmentImageInfoKHR}
  alignment _ = #{alignment VkFramebufferAttachmentImageInfoKHR}

  peek ptr = 
    VkFramebufferAttachmentImageInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"width" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"height" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layerCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"viewFormatCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pViewFormats" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"usage" ptr val
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"layerCount" ptr val
    pokeField @"viewFormatCount" ptr val
    pokeField @"pViewFormats" ptr val

instance Offset "sType" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, sType}

instance Offset "pNext" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, pNext}

instance Offset "flags" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, flags}

instance Offset "usage" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, usage}

instance Offset "width" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, width}

instance Offset "height" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, height}

instance Offset "layerCount" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, layerCount}

instance Offset "viewFormatCount" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, viewFormatCount}

instance Offset "pViewFormats" VkFramebufferAttachmentImageInfoKHR where
  rawOffset = #{offset VkFramebufferAttachmentImageInfoKHR, pViewFormats}

#else

module Vulkan.Types.Struct.VkFramebufferAttachmentImageInfoKHR where

#endif