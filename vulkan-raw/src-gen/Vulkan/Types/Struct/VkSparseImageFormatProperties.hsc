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
  sizeOf    _ = #{size      struct VkSparseImageFormatProperties}
  alignment _ = #{alignment struct VkSparseImageFormatProperties}

  peek ptr = 
    VkSparseImageFormatProperties
       <$> peek (offset @"aspectMask" ptr)
       <*> peek (offset @"imageGranularity" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"aspectMask" ptr val
    pokeField @"imageGranularity" ptr val
    pokeField @"flags" ptr val

instance Offset "aspectMask" VkSparseImageFormatProperties where
  rawOffset = #{offset struct VkSparseImageFormatProperties, aspectMask}

instance Offset "imageGranularity" VkSparseImageFormatProperties where
  rawOffset = #{offset struct VkSparseImageFormatProperties, imageGranularity}

instance Offset "flags" VkSparseImageFormatProperties where
  rawOffset = #{offset struct VkSparseImageFormatProperties, flags}