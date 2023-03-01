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

module Vulkan.Types.Struct.VkAccelerationStructureInstanceKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureInstanceKHR" #-} VkAccelerationStructureInstanceKHR = VkAccelerationStructureInstanceKHR

instance Storable VkAccelerationStructureInstanceKHR where
  sizeOf    _ = #{size      VkAccelerationStructureInstanceKHR}
  alignment _ = #{alignment VkAccelerationStructureInstanceKHR}

  peek _ptr = pure VkAccelerationStructureInstanceKHR

  poke _ptr _val = return ()

#else

module Vulkan.Types.Struct.VkAccelerationStructureInstanceKHR where

#endif