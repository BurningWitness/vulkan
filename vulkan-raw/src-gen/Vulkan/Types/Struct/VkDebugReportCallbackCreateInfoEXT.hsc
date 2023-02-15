{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_report

module Vulkan.Types.Struct.VkDebugReportCallbackCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDebugReportFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.FuncPointer.PFN_vkDebugReportCallbackEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDebugReportCallbackCreateInfoEXT" #-} VkDebugReportCallbackCreateInfoEXT =
       VkDebugReportCallbackCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDebugReportFlagsEXT -- ^ Indicates which events call this callback
         , pfnCallback :: FunPtr PFN_vkDebugReportCallbackEXT -- ^ Function pointer of a callback function
         , pUserData :: Ptr () -- ^ User data provided to callback function
         }

instance Storable VkDebugReportCallbackCreateInfoEXT where
  sizeOf    _ = #{size      VkDebugReportCallbackCreateInfoEXT}
  alignment _ = #{alignment VkDebugReportCallbackCreateInfoEXT}

  peek ptr = 
    VkDebugReportCallbackCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnCallback" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pUserData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pfnCallback" ptr val
    pokeField @"pUserData" ptr val

instance Offset "sType" VkDebugReportCallbackCreateInfoEXT where
  rawOffset = #{offset VkDebugReportCallbackCreateInfoEXT, sType}

instance Offset "pNext" VkDebugReportCallbackCreateInfoEXT where
  rawOffset = #{offset VkDebugReportCallbackCreateInfoEXT, pNext}

instance Offset "flags" VkDebugReportCallbackCreateInfoEXT where
  rawOffset = #{offset VkDebugReportCallbackCreateInfoEXT, flags}

instance Offset "pfnCallback" VkDebugReportCallbackCreateInfoEXT where
  rawOffset = #{offset VkDebugReportCallbackCreateInfoEXT, pfnCallback}

instance Offset "pUserData" VkDebugReportCallbackCreateInfoEXT where
  rawOffset = #{offset VkDebugReportCallbackCreateInfoEXT, pUserData}

#else

module Vulkan.Types.Struct.VkDebugReportCallbackCreateInfoEXT where

#endif