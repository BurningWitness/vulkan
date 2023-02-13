{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkRenderingAttachmentInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAttachmentLoadOp
import Vulkan.Types.Enum.VkAttachmentStoreOp
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkResolveModeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Union.VkClearValue



data {-# CTYPE "vulkan/vulkan.h" "VkRenderingAttachmentInfo" #-} VkRenderingAttachmentInfo =
       VkRenderingAttachmentInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageView :: VkImageView
         , imageLayout :: VkImageLayout
         , resolveMode :: VkResolveModeFlagBits
         , resolveImageView :: VkImageView
         , resolveImageLayout :: VkImageLayout
         , loadOp :: VkAttachmentLoadOp
         , storeOp :: VkAttachmentStoreOp
         , clearValue :: VkClearValue
         }

instance Storable VkRenderingAttachmentInfo where
  sizeOf    _ = #{size      VkRenderingAttachmentInfo}
  alignment _ = #{alignment VkRenderingAttachmentInfo}

  peek ptr = 
    VkRenderingAttachmentInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageView" ptr)
       <*> peek (offset @"imageLayout" ptr)
       <*> peek (offset @"resolveMode" ptr)
       <*> peek (offset @"resolveImageView" ptr)
       <*> peek (offset @"resolveImageLayout" ptr)
       <*> peek (offset @"loadOp" ptr)
       <*> peek (offset @"storeOp" ptr)
       <*> peek (offset @"clearValue" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageView" ptr val
    pokeField @"imageLayout" ptr val
    pokeField @"resolveMode" ptr val
    pokeField @"resolveImageView" ptr val
    pokeField @"resolveImageLayout" ptr val
    pokeField @"loadOp" ptr val
    pokeField @"storeOp" ptr val
    pokeField @"clearValue" ptr val

instance Offset "sType" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, sType}

instance Offset "pNext" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, pNext}

instance Offset "imageView" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, imageView}

instance Offset "imageLayout" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, imageLayout}

instance Offset "resolveMode" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, resolveMode}

instance Offset "resolveImageView" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, resolveImageView}

instance Offset "resolveImageLayout" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, resolveImageLayout}

instance Offset "loadOp" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, loadOp}

instance Offset "storeOp" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, storeOp}

instance Offset "clearValue" VkRenderingAttachmentInfo where
  rawOffset = #{offset VkRenderingAttachmentInfo, clearValue}

#else

module Vulkan.Types.Struct.VkRenderingAttachmentInfo where

#endif