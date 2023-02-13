{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSparseImageFormatProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags
import Vulkan.Types.Enum.VkSparseImageFormatFlags
import Vulkan.Types.Struct.VkExtent3D



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageFormatProperties" #-} VkSparseImageFormatProperties =
       VkSparseImageFormatProperties
         { aspectMask :: VkImageAspectFlags
         , imageGranularity :: VkExtent3D
         , flags :: VkSparseImageFormatFlags
         }

instance Storable VkSparseImageFormatProperties where
  sizeOf    _ = #{size      VkSparseImageFormatProperties}
  alignment _ = #{alignment VkSparseImageFormatProperties}

  peek ptr = 
    VkSparseImageFormatProperties
       <$> peek (Foreign.Storable.Offset.offset @"aspectMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageGranularity" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"aspectMask" ptr val
    pokeField @"imageGranularity" ptr val
    pokeField @"flags" ptr val

instance Offset "aspectMask" VkSparseImageFormatProperties where
  rawOffset = #{offset VkSparseImageFormatProperties, aspectMask}

instance Offset "imageGranularity" VkSparseImageFormatProperties where
  rawOffset = #{offset VkSparseImageFormatProperties, imageGranularity}

instance Offset "flags" VkSparseImageFormatProperties where
  rawOffset = #{offset VkSparseImageFormatProperties, flags}