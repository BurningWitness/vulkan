{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceSynchronization2Features where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSynchronization2Features" #-} VkPhysicalDeviceSynchronization2Features =
       VkPhysicalDeviceSynchronization2Features
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , synchronization2 :: VkBool32
         }

instance Storable VkPhysicalDeviceSynchronization2Features where
  sizeOf    _ = #{size      VkPhysicalDeviceSynchronization2Features}
  alignment _ = #{alignment VkPhysicalDeviceSynchronization2Features}

  peek ptr = 
    VkPhysicalDeviceSynchronization2Features
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"synchronization2" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"synchronization2" ptr val

instance Offset "sType" VkPhysicalDeviceSynchronization2Features where
  rawOffset = #{offset VkPhysicalDeviceSynchronization2Features, sType}

instance Offset "pNext" VkPhysicalDeviceSynchronization2Features where
  rawOffset = #{offset VkPhysicalDeviceSynchronization2Features, pNext}

instance Offset "synchronization2" VkPhysicalDeviceSynchronization2Features where
  rawOffset = #{offset VkPhysicalDeviceSynchronization2Features, synchronization2}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSynchronization2Features where

#endif