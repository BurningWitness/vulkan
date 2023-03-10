{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkBindImageMemoryInfo}
  alignment _ = #{alignment VkBindImageMemoryInfo}

  peek ptr = 
    VkBindImageMemoryInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"image" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val

instance Offset "sType" VkBindImageMemoryInfo where
  rawOffset = #{offset VkBindImageMemoryInfo, sType}

instance Offset "pNext" VkBindImageMemoryInfo where
  rawOffset = #{offset VkBindImageMemoryInfo, pNext}

instance Offset "image" VkBindImageMemoryInfo where
  rawOffset = #{offset VkBindImageMemoryInfo, image}

instance Offset "memory" VkBindImageMemoryInfo where
  rawOffset = #{offset VkBindImageMemoryInfo, memory}

instance Offset "memoryOffset" VkBindImageMemoryInfo where
  rawOffset = #{offset VkBindImageMemoryInfo, memoryOffset}

#else

module Vulkan.Types.Struct.VkBindImageMemoryInfo where

#endif