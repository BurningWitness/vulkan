{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_rotated_copy_commands

module Vulkan.Types.Struct.VkCopyCommandTransformInfoQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkCopyCommandTransformInfoQCOM" #-} VkCopyCommandTransformInfoQCOM =
       VkCopyCommandTransformInfoQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , transform :: VkSurfaceTransformFlagBitsKHR
         }

instance Storable VkCopyCommandTransformInfoQCOM where
  sizeOf    _ = #{size      VkCopyCommandTransformInfoQCOM}
  alignment _ = #{alignment VkCopyCommandTransformInfoQCOM}

  peek ptr = 
    VkCopyCommandTransformInfoQCOM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transform" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"transform" ptr val

instance Offset "sType" VkCopyCommandTransformInfoQCOM where
  rawOffset = #{offset VkCopyCommandTransformInfoQCOM, sType}

instance Offset "pNext" VkCopyCommandTransformInfoQCOM where
  rawOffset = #{offset VkCopyCommandTransformInfoQCOM, pNext}

instance Offset "transform" VkCopyCommandTransformInfoQCOM where
  rawOffset = #{offset VkCopyCommandTransformInfoQCOM, transform}

#else

module Vulkan.Types.Struct.VkCopyCommandTransformInfoQCOM where

#endif