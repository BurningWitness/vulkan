{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkAttachmentDescription where

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



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentDescription" #-} VkAttachmentDescription =
       VkAttachmentDescription
         { flags :: VkAttachmentDescriptionFlags
         , format :: VkFormat
         , samples :: VkSampleCountFlagBits
         , loadOp :: VkAttachmentLoadOp -- ^ Load operation for color or depth data
         , storeOp :: VkAttachmentStoreOp -- ^ Store operation for color or depth data
         , stencilLoadOp :: VkAttachmentLoadOp -- ^ Load operation for stencil data
         , stencilStoreOp :: VkAttachmentStoreOp -- ^ Store operation for stencil data
         , initialLayout :: VkImageLayout
         , finalLayout :: VkImageLayout
         }

instance Storable VkAttachmentDescription where
  sizeOf    _ = #{size      VkAttachmentDescription}
  alignment _ = #{alignment VkAttachmentDescription}

  peek ptr = 
    VkAttachmentDescription
       <$> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"loadOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storeOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilLoadOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilStoreOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"initialLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"finalLayout" ptr)

  poke ptr val = do
    pokeField @"flags" ptr val
    pokeField @"format" ptr val
    pokeField @"samples" ptr val
    pokeField @"loadOp" ptr val
    pokeField @"storeOp" ptr val
    pokeField @"stencilLoadOp" ptr val
    pokeField @"stencilStoreOp" ptr val
    pokeField @"initialLayout" ptr val
    pokeField @"finalLayout" ptr val

instance Offset "flags" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, flags}

instance Offset "format" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, format}

instance Offset "samples" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, samples}

instance Offset "loadOp" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, loadOp}

instance Offset "storeOp" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, storeOp}

instance Offset "stencilLoadOp" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, stencilLoadOp}

instance Offset "stencilStoreOp" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, stencilStoreOp}

instance Offset "initialLayout" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, initialLayout}

instance Offset "finalLayout" VkAttachmentDescription where
  rawOffset = #{offset VkAttachmentDescription, finalLayout}