{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4Properties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMaintenance4Properties" #-} VkPhysicalDeviceMaintenance4Properties =
       VkPhysicalDeviceMaintenance4Properties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxBufferSize :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceMaintenance4Properties where
  sizeOf    _ = #{size      VkPhysicalDeviceMaintenance4Properties}
  alignment _ = #{alignment VkPhysicalDeviceMaintenance4Properties}

  peek ptr = 
    VkPhysicalDeviceMaintenance4Properties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxBufferSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxBufferSize" ptr val

instance Offset "sType" VkPhysicalDeviceMaintenance4Properties where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4Properties, sType}

instance Offset "pNext" VkPhysicalDeviceMaintenance4Properties where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4Properties, pNext}

instance Offset "maxBufferSize" VkPhysicalDeviceMaintenance4Properties where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4Properties, maxBufferSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4Properties where

#endif