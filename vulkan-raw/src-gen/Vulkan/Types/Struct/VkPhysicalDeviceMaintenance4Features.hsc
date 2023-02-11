{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4Features where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMaintenance4Features" #-} VkPhysicalDeviceMaintenance4Features =
       VkPhysicalDeviceMaintenance4Features
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maintenance4 :: VkBool32
         }

instance Storable VkPhysicalDeviceMaintenance4Features where
  sizeOf    _ = #{size      struct VkPhysicalDeviceMaintenance4Features}
  alignment _ = #{alignment struct VkPhysicalDeviceMaintenance4Features}

  peek ptr = 
    VkPhysicalDeviceMaintenance4Features
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maintenance4" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maintenance4" ptr val

instance Offset "sType" VkPhysicalDeviceMaintenance4Features where
  rawOffset = #{offset struct VkPhysicalDeviceMaintenance4Features, sType}

instance Offset "pNext" VkPhysicalDeviceMaintenance4Features where
  rawOffset = #{offset struct VkPhysicalDeviceMaintenance4Features, pNext}

instance Offset "maintenance4" VkPhysicalDeviceMaintenance4Features where
  rawOffset = #{offset struct VkPhysicalDeviceMaintenance4Features, maintenance4}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4Features where

#endif