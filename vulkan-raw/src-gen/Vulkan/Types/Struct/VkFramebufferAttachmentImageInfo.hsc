{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkFramebufferAttachmentImageInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkFramebufferAttachmentImageInfo" #-} VkFramebufferAttachmentImageInfo =
       VkFramebufferAttachmentImageInfo
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

instance Storable VkFramebufferAttachmentImageInfo where
  sizeOf    _ = #{size      struct VkFramebufferAttachmentImageInfo}
  alignment _ = #{alignment struct VkFramebufferAttachmentImageInfo}

  peek ptr = 
    VkFramebufferAttachmentImageInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"usage" ptr)
       <*> peek (offset @"width" ptr)
       <*> peek (offset @"height" ptr)
       <*> peek (offset @"layerCount" ptr)
       <*> peek (offset @"viewFormatCount" ptr)
       <*> peek (offset @"pViewFormats" ptr)

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

instance Offset "sType" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, sType}

instance Offset "pNext" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, pNext}

instance Offset "flags" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, flags}

instance Offset "usage" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, usage}

instance Offset "width" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, width}

instance Offset "height" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, height}

instance Offset "layerCount" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, layerCount}

instance Offset "viewFormatCount" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, viewFormatCount}

instance Offset "pViewFormats" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset struct VkFramebufferAttachmentImageInfo, pViewFormats}

#else

module Vulkan.Types.Struct.VkFramebufferAttachmentImageInfo where

#endif