{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_host_query_reset

module Vulkan.Types.Struct.VkPhysicalDeviceHostQueryResetFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceHostQueryResetFeaturesEXT" #-} VkPhysicalDeviceHostQueryResetFeaturesEXT =
       VkPhysicalDeviceHostQueryResetFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , hostQueryReset :: VkBool32
         }

instance Storable VkPhysicalDeviceHostQueryResetFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceHostQueryResetFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceHostQueryResetFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceHostQueryResetFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hostQueryReset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"hostQueryReset" ptr val

instance Offset "sType" VkPhysicalDeviceHostQueryResetFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceHostQueryResetFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceHostQueryResetFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceHostQueryResetFeaturesEXT, pNext}

instance Offset "hostQueryReset" VkPhysicalDeviceHostQueryResetFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceHostQueryResetFeaturesEXT, hostQueryReset}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceHostQueryResetFeaturesEXT where

#endif