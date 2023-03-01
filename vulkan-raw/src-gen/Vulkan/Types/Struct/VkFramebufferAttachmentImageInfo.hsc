{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkFramebufferAttachmentImageInfo}
  alignment _ = #{alignment VkFramebufferAttachmentImageInfo}

  peek ptr = 
    VkFramebufferAttachmentImageInfo
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

instance Offset "sType" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, sType}

instance Offset "pNext" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, pNext}

instance Offset "flags" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, flags}

instance Offset "usage" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, usage}

instance Offset "width" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, width}

instance Offset "height" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, height}

instance Offset "layerCount" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, layerCount}

instance Offset "viewFormatCount" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, viewFormatCount}

instance Offset "pViewFormats" VkFramebufferAttachmentImageInfo where
  rawOffset = #{offset VkFramebufferAttachmentImageInfo, pViewFormats}

#else

module Vulkan.Types.Struct.VkFramebufferAttachmentImageInfo where

#endif