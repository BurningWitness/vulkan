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
  sizeOf    _ = #{size      VkSparseImageMemoryRequirements}
  alignment _ = #{alignment VkSparseImageMemoryRequirements}

  peek ptr = 
    VkSparseImageMemoryRequirements
       <$> peek (Foreign.Storable.Offset.offset @"formatProperties" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageMipTailFirstLod" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageMipTailSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageMipTailOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageMipTailStride" ptr)

  poke ptr val = do
    pokeField @"formatProperties" ptr val
    pokeField @"imageMipTailFirstLod" ptr val
    pokeField @"imageMipTailSize" ptr val
    pokeField @"imageMipTailOffset" ptr val
    pokeField @"imageMipTailStride" ptr val

instance Offset "formatProperties" VkSparseImageMemoryRequirements where
  rawOffset = #{offset VkSparseImageMemoryRequirements, formatProperties}

instance Offset "imageMipTailFirstLod" VkSparseImageMemoryRequirements where
  rawOffset = #{offset VkSparseImageMemoryRequirements, imageMipTailFirstLod}

instance Offset "imageMipTailSize" VkSparseImageMemoryRequirements where
  rawOffset = #{offset VkSparseImageMemoryRequirements, imageMipTailSize}

instance Offset "imageMipTailOffset" VkSparseImageMemoryRequirements where
  rawOffset = #{offset VkSparseImageMemoryRequirements, imageMipTailOffset}

instance Offset "imageMipTailStride" VkSparseImageMemoryRequirements where
  rawOffset = #{offset VkSparseImageMemoryRequirements, imageMipTailStride}