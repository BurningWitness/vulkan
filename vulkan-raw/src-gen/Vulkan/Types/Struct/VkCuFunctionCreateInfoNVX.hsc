{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Struct.VkCuFunctionCreateInfoNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCuFunctionCreateInfoNVX" #-} VkCuFunctionCreateInfoNVX =
       VkCuFunctionCreateInfoNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , module_ :: VkCuModuleNVX
         , pName :: Ptr #{type char}
         }

instance Storable VkCuFunctionCreateInfoNVX where
  sizeOf    _ = #{size      struct VkCuFunctionCreateInfoNVX}
  alignment _ = #{alignment struct VkCuFunctionCreateInfoNVX}

  peek ptr = 
    VkCuFunctionCreateInfoNVX
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"module" ptr)
       <*> peek (offset @"pName" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"module" ptr val
    pokeField @"pName" ptr val

instance Offset "sType" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset struct VkCuFunctionCreateInfoNVX, sType}

instance Offset "pNext" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset struct VkCuFunctionCreateInfoNVX, pNext}

instance Offset "module_" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset struct VkCuFunctionCreateInfoNVX, module}

instance Offset "pName" VkCuFunctionCreateInfoNVX where
  rawOffset = #{offset struct VkCuFunctionCreateInfoNVX, pName}

instance Offset "module" VkCuFunctionCreateInfoNVX where
  rawOffset = rawOffset @"module_" @VkCuFunctionCreateInfoNVX

instance HasField "module" VkCuFunctionCreateInfoNVX VkCuModuleNVX where
  getField = getField @"module_" @VkCuFunctionCreateInfoNVX

#else

module Vulkan.Types.Struct.VkCuFunctionCreateInfoNVX where

#endif