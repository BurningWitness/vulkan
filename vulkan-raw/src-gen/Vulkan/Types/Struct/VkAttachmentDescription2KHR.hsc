{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Struct.VkAttachmentDescription2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAttachmentDescriptionFlags
import Vulkan.Types.Enum.VkAttachmentLoadOp
import Vulkan.Types.Enum.VkAttachmentStoreOp
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentDescription2KHR" #-} VkAttachmentDescription2KHR =
       VkAttachmentDescription2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkAttachmentDescriptionFlags
         , format :: VkFormat
         , samples :: VkSampleCountFlagBits
         , loadOp :: VkAttachmentLoadOp -- ^ Load operation for color or depth data
         , storeOp :: VkAttachmentStoreOp -- ^ Store operation for color or depth data
         , stencilLoadOp :: VkAttachmentLoadOp -- ^ Load operation for stencil data
         , stencilStoreOp :: VkAttachmentStoreOp -- ^ Store operation for stencil data
         , initialLayout :: VkImageLayout
         , finalLayout :: VkImageLayout
         }

instance Storable VkAttachmentDescription2KHR where
  sizeOf    _ = #{size      VkAttachmentDescription2KHR}
  alignment _ = #{alignment VkAttachmentDescription2KHR}

  peek ptr = 
    VkAttachmentDescription2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"samples" ptr)
       <*> peek (offset @"loadOp" ptr)
       <*> peek (offset @"storeOp" ptr)
       <*> peek (offset @"stencilLoadOp" ptr)
       <*> peek (offset @"stencilStoreOp" ptr)
       <*> peek (offset @"initialLayout" ptr)
       <*> peek (offset @"finalLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"format" ptr val
    pokeField @"samples" ptr val
    pokeField @"loadOp" ptr val
    pokeField @"storeOp" ptr val
    pokeField @"stencilLoadOp" ptr val
    pokeField @"stencilStoreOp" ptr val
    pokeField @"initialLayout" ptr val
    pokeField @"finalLayout" ptr val

instance Offset "sType" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, sType}

instance Offset "pNext" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, pNext}

instance Offset "flags" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, flags}

instance Offset "format" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, format}

instance Offset "samples" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, samples}

instance Offset "loadOp" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, loadOp}

instance Offset "storeOp" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, storeOp}

instance Offset "stencilLoadOp" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, stencilLoadOp}

instance Offset "stencilStoreOp" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, stencilStoreOp}

instance Offset "initialLayout" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, initialLayout}

instance Offset "finalLayout" VkAttachmentDescription2KHR where
  rawOffset = #{offset VkAttachmentDescription2KHR, finalLayout}

#else

module Vulkan.Types.Struct.VkAttachmentDescription2KHR where

#endif