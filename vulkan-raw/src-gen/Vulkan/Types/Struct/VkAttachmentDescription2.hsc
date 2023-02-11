{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkAttachmentDescription2 where

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



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentDescription2" #-} VkAttachmentDescription2 =
       VkAttachmentDescription2
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

instance Storable VkAttachmentDescription2 where
  sizeOf    _ = #{size      struct VkAttachmentDescription2}
  alignment _ = #{alignment struct VkAttachmentDescription2}

  peek ptr = 
    VkAttachmentDescription2
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

instance Offset "sType" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, sType}

instance Offset "pNext" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, pNext}

instance Offset "flags" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, flags}

instance Offset "format" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, format}

instance Offset "samples" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, samples}

instance Offset "loadOp" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, loadOp}

instance Offset "storeOp" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, storeOp}

instance Offset "stencilLoadOp" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, stencilLoadOp}

instance Offset "stencilStoreOp" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, stencilStoreOp}

instance Offset "initialLayout" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, initialLayout}

instance Offset "finalLayout" VkAttachmentDescription2 where
  rawOffset = #{offset struct VkAttachmentDescription2, finalLayout}

#else

module Vulkan.Types.Struct.VkAttachmentDescription2 where

#endif