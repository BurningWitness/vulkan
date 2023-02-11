{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkBindImageMemoryInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBindImageMemoryInfo" #-} VkBindImageMemoryInfo =
       VkBindImageMemoryInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize
         }

instance Storable VkBindImageMemoryInfo where
  sizeOf    _ = #{size      struct VkBindImageMemoryInfo}
  alignment _ = #{alignment struct VkBindImageMemoryInfo}

  peek ptr = 
    VkBindImageMemoryInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)
       <*> peek (offset @"memory" ptr)
       <*> peek (offset @"memoryOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val

instance Offset "sType" VkBindImageMemoryInfo where
  rawOffset = #{offset struct VkBindImageMemoryInfo, sType}

instance Offset "pNext" VkBindImageMemoryInfo where
  rawOffset = #{offset struct VkBindImageMemoryInfo, pNext}

instance Offset "image" VkBindImageMemoryInfo where
  rawOffset = #{offset struct VkBindImageMemoryInfo, image}

instance Offset "memory" VkBindImageMemoryInfo where
  rawOffset = #{offset struct VkBindImageMemoryInfo, memory}

instance Offset "memoryOffset" VkBindImageMemoryInfo where
  rawOffset = #{offset struct VkBindImageMemoryInfo, memoryOffset}

#else

module Vulkan.Types.Struct.VkBindImageMemoryInfo where

#endif