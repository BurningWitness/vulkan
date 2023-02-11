{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSparseImageMemoryRequirements where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Struct.VkSparseImageFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageMemoryRequirements" #-} VkSparseImageMemoryRequirements =
       VkSparseImageMemoryRequirements
         { formatProperties :: VkSparseImageFormatProperties
         , imageMipTailFirstLod :: #{type uint32_t}
         , imageMipTailSize :: VkDeviceSize -- ^ Specified in bytes, must be a multiple of sparse block size in bytes / alignment
         , imageMipTailOffset :: VkDeviceSize -- ^ Specified in bytes, must be a multiple of sparse block size in bytes / alignment
         , imageMipTailStride :: VkDeviceSize -- ^ Specified in bytes, must be a multiple of sparse block size in bytes / alignment
         }

instance Storable VkSparseImageMemoryRequirements where
  sizeOf    _ = #{size      struct VkSparseImageMemoryRequirements}
  alignment _ = #{alignment struct VkSparseImageMemoryRequirements}

  peek ptr = 
    VkSparseImageMemoryRequirements
       <$> peek (offset @"formatProperties" ptr)
       <*> peek (offset @"imageMipTailFirstLod" ptr)
       <*> peek (offset @"imageMipTailSize" ptr)
       <*> peek (offset @"imageMipTailOffset" ptr)
       <*> peek (offset @"imageMipTailStride" ptr)

  poke ptr val = do
    pokeField @"formatProperties" ptr val
    pokeField @"imageMipTailFirstLod" ptr val
    pokeField @"imageMipTailSize" ptr val
    pokeField @"imageMipTailOffset" ptr val
    pokeField @"imageMipTailStride" ptr val

instance Offset "formatProperties" VkSparseImageMemoryRequirements where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements, formatProperties}

instance Offset "imageMipTailFirstLod" VkSparseImageMemoryRequirements where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements, imageMipTailFirstLod}

instance Offset "imageMipTailSize" VkSparseImageMemoryRequirements where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements, imageMipTailSize}

instance Offset "imageMipTailOffset" VkSparseImageMemoryRequirements where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements, imageMipTailOffset}

instance Offset "imageMipTailStride" VkSparseImageMemoryRequirements where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements, imageMipTailStride}