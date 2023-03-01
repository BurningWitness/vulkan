{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAccelerationStructureVersionInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureVersionInfoKHR" #-} VkAccelerationStructureVersionInfoKHR =
       VkAccelerationStructureVersionInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pVersionData :: Ptr #{type uint8_t}
         }

instance Storable VkAccelerationStructureVersionInfoKHR where
  sizeOf    _ = #{size      VkAccelerationStructureVersionInfoKHR}
  alignment _ = #{alignment VkAccelerationStructureVersionInfoKHR}

  peek ptr = 
    VkAccelerationStructureVersionInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pVersionData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pVersionData" ptr val

instance Offset "sType" VkAccelerationStructureVersionInfoKHR where
  rawOffset = #{offset VkAccelerationStructureVersionInfoKHR, sType}

instance Offset "pNext" VkAccelerationStructureVersionInfoKHR where
  rawOffset = #{offset VkAccelerationStructureVersionInfoKHR, pNext}

instance Offset "pVersionData" VkAccelerationStructureVersionInfoKHR where
  rawOffset = #{offset VkAccelerationStructureVersionInfoKHR, pVersionData}

#else

module Vulkan.Types.Struct.VkAccelerationStructureVersionInfoKHR where

#endif