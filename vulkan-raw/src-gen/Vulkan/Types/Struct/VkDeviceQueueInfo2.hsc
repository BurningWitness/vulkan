{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDeviceQueueInfo2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceQueueCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceQueueInfo2" #-} VkDeviceQueueInfo2 =
       VkDeviceQueueInfo2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceQueueCreateFlags
         , queueFamilyIndex :: #{type uint32_t}
         , queueIndex :: #{type uint32_t}
         }

instance Storable VkDeviceQueueInfo2 where
  sizeOf    _ = #{size      VkDeviceQueueInfo2}
  alignment _ = #{alignment VkDeviceQueueInfo2}

  peek ptr = 
    VkDeviceQueueInfo2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"queueFamilyIndex" ptr)
       <*> peek (offset @"queueIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"queueFamilyIndex" ptr val
    pokeField @"queueIndex" ptr val

instance Offset "sType" VkDeviceQueueInfo2 where
  rawOffset = #{offset VkDeviceQueueInfo2, sType}

instance Offset "pNext" VkDeviceQueueInfo2 where
  rawOffset = #{offset VkDeviceQueueInfo2, pNext}

instance Offset "flags" VkDeviceQueueInfo2 where
  rawOffset = #{offset VkDeviceQueueInfo2, flags}

instance Offset "queueFamilyIndex" VkDeviceQueueInfo2 where
  rawOffset = #{offset VkDeviceQueueInfo2, queueFamilyIndex}

instance Offset "queueIndex" VkDeviceQueueInfo2 where
  rawOffset = #{offset VkDeviceQueueInfo2, queueIndex}

#else

module Vulkan.Types.Struct.VkDeviceQueueInfo2 where

#endif